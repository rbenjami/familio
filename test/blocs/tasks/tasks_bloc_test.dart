import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:familio/blocs/tasks/tasks_bloc.dart';
import 'package:familio/blocs/tasks/tasks_event.dart';
import 'package:familio/blocs/tasks/tasks_state.dart';
import 'package:familio/data/services/task_service.dart';
import 'package:familio/brick/models/models.dart';

// Mock classes
class MockTaskService extends Mock implements TaskService {}

void main() {
  late TasksBloc tasksBloc;
  late MockTaskService mockTaskService;

  // Test data
  final testHome = Home(
    id: 'home-1',
    name: 'Test Home',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  final testTask1 = Task(
    id: 'task-1',
    home: testHome,
    title: 'Task 1',
    description: 'Description 1',
    status: TaskStatus.todo,
    priority: Priority.high,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  final testTask2 = Task(
    id: 'task-2',
    home: testHome,
    title: 'Task 2',
    description: 'Description 2',
    status: TaskStatus.inProgress,
    priority: Priority.medium,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  final testTask3 = Task(
    id: 'task-3',
    home: testHome,
    title: 'Task 3',
    description: 'Description 3',
    status: TaskStatus.done,
    priority: Priority.low,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  final testStats = {
    'todo': 5,
    'in_progress': 3,
    'done': 10,
    'total': 18,
  };

  setUp(() {
    mockTaskService = MockTaskService();
    tasksBloc = TasksBloc(mockTaskService);
  });

  tearDown(() {
    tasksBloc.close();
  });

  group('TasksBloc', () {
    test('initial state is TasksState with initial status', () {
      expect(
        tasksBloc.state,
        const TasksState(uiStatus: TasksUiStatus.initial),
      );
    });

    group('LoadTasks', () {
      blocTest<TasksBloc, TasksState>(
        'emits [loading, loaded] with tasks and stats when loading succeeds',
        setUp: () {
          when(
            () => mockTaskService.getTasksForHome(
              homeId: testHome.id,
              status: null,
              assignedToUserId: null,
              priority: null,
            ),
          ).thenAnswer((_) async => [testTask1, testTask2, testTask3]);

          when(() => mockTaskService.getTaskStats(homeId: testHome.id))
              .thenAnswer((_) async => testStats);
        },
        build: () => tasksBloc,
        act: (bloc) => bloc.add(LoadTasks(home: testHome)),
        expect: () => [
          const TasksState(uiStatus: TasksUiStatus.loading),
          TasksState(
            uiStatus: TasksUiStatus.loaded,
            home: testHome,
            tasks: [testTask1, testTask2, testTask3],
            taskStats: testStats,
          ),
        ],
      );

      blocTest<TasksBloc, TasksState>(
        'emits [loading, loaded] with filtered tasks when filters are applied',
        setUp: () {
          when(
            () => mockTaskService.getTasksForHome(
              homeId: testHome.id,
              status: TaskStatus.todo,
              assignedToUserId: null,
              priority: null,
            ),
          ).thenAnswer((_) async => [testTask1]);

          when(() => mockTaskService.getTaskStats(homeId: testHome.id))
              .thenAnswer((_) async => testStats);
        },
        build: () => tasksBloc,
        seed: () => const TasksState(
          filters: TaskFilters(status: TaskStatus.todo),
        ),
        act: (bloc) => bloc.add(LoadTasks(home: testHome)),
        expect: () => [
          const TasksState(
            uiStatus: TasksUiStatus.loading,
            filters: TaskFilters(status: TaskStatus.todo),
          ),
          TasksState(
            uiStatus: TasksUiStatus.loaded,
            home: testHome,
            tasks: [testTask1],
            taskStats: testStats,
            filters: const TaskFilters(status: TaskStatus.todo),
          ),
        ],
      );

      blocTest<TasksBloc, TasksState>(
        'emits [loading, error] when loading tasks fails',
        setUp: () {
          when(
            () => mockTaskService.getTasksForHome(
              homeId: testHome.id,
              status: null,
              assignedToUserId: null,
              priority: null,
            ),
          ).thenThrow(Exception('Failed to load tasks'));
        },
        build: () => tasksBloc,
        act: (bloc) => bloc.add(LoadTasks(home: testHome)),
        expect: () => [
          const TasksState(uiStatus: TasksUiStatus.loading),
          isA<TasksState>()
              .having((s) => s.uiStatus, 'uiStatus', TasksUiStatus.error)
              .having((s) => s.error, 'error', isNotNull),
        ],
      );
    });

    group('UpdateTaskStatus', () {
      blocTest<TasksBloc, TasksState>(
        'updates task status and refreshes stats',
        setUp: () {
          final updatedTask = testTask1.copyWith(status: TaskStatus.done);

          when(
            () => mockTaskService.updateTask(
              taskId: testTask1.id,
              status: TaskStatus.done,
            ),
          ).thenAnswer((_) async => updatedTask);

          when(() => mockTaskService.getTaskStats(homeId: testTask1.home.id))
              .thenAnswer((_) async => testStats);
        },
        build: () => tasksBloc,
        seed: () => TasksState(
          home: testHome,
          tasks: [testTask1, testTask2],
          taskStats: testStats,
          uiStatus: TasksUiStatus.loaded,
        ),
        act: (bloc) => bloc.add(
          UpdateTaskStatus(task: testTask1, status: TaskStatus.done),
        ),
        expect: () => [
          isA<TasksState>()
              .having((s) => s.tasks.length, 'tasks.length', 2)
              .having(
                (s) => s.tasks.firstWhere((t) => t.id == testTask1.id).status,
                'updated task status',
                TaskStatus.done,
              )
              .having((s) => s.taskStats, 'taskStats', testStats),
        ],
      );

      blocTest<TasksBloc, TasksState>(
        'emits error when updating task status fails',
        setUp: () {
          when(
            () => mockTaskService.updateTask(
              taskId: testTask1.id,
              status: TaskStatus.done,
            ),
          ).thenThrow(Exception('Failed to update task'));
        },
        build: () => tasksBloc,
        seed: () => TasksState(
          home: testHome,
          tasks: [testTask1],
          uiStatus: TasksUiStatus.loaded,
        ),
        act: (bloc) => bloc.add(
          UpdateTaskStatus(task: testTask1, status: TaskStatus.done),
        ),
        expect: () => [
          isA<TasksState>()
              .having((s) => s.uiStatus, 'uiStatus', TasksUiStatus.error)
              .having((s) => s.error, 'error', isNotNull),
        ],
      );
    });

    group('DeleteTask', () {
      blocTest<TasksBloc, TasksState>(
        'deletes task and refreshes stats',
        setUp: () {
          when(() => mockTaskService.deleteTask(testTask1.id))
              .thenAnswer((_) async => {});

          when(() => mockTaskService.getTaskStats(homeId: testTask1.home.id))
              .thenAnswer((_) async => testStats);
        },
        build: () => tasksBloc,
        seed: () => TasksState(
          home: testHome,
          tasks: [testTask1, testTask2],
          taskStats: testStats,
          uiStatus: TasksUiStatus.loaded,
        ),
        act: (bloc) => bloc.add(DeleteTask(task: testTask1)),
        expect: () => [
          TasksState(
            home: testHome,
            tasks: [testTask1, testTask2],
            taskStats: testStats,
            uiStatus: TasksUiStatus.deleting,
          ),
          TasksState(
            home: testHome,
            tasks: [testTask1, testTask2],
            taskStats: testStats,
            uiStatus: TasksUiStatus.loaded,
          ),
          TasksState(
            home: testHome,
            tasks: [testTask2],
            taskStats: testStats,
            uiStatus: TasksUiStatus.loaded,
          ),
        ],
      );

      blocTest<TasksBloc, TasksState>(
        'emits error when deleting task fails',
        setUp: () {
          when(() => mockTaskService.deleteTask(testTask1.id))
              .thenThrow(Exception('Failed to delete task'));
        },
        build: () => tasksBloc,
        seed: () => TasksState(
          home: testHome,
          tasks: [testTask1],
          uiStatus: TasksUiStatus.loaded,
        ),
        act: (bloc) => bloc.add(DeleteTask(task: testTask1)),
        expect: () => [
          TasksState(
            home: testHome,
            tasks: [testTask1],
            uiStatus: TasksUiStatus.deleting,
          ),
          isA<TasksState>()
              .having((s) => s.uiStatus, 'uiStatus', TasksUiStatus.error)
              .having((s) => s.error, 'error', isNotNull),
        ],
      );
    });

    group('ApplyFilters', () {
      blocTest<TasksBloc, TasksState>(
        'applies filters and reloads tasks',
        setUp: () {
          when(
            () => mockTaskService.getTasksForHome(
              homeId: testHome.id,
              status: TaskStatus.todo,
              assignedToUserId: 'user-1',
              priority: Priority.high,
            ),
          ).thenAnswer((_) async => [testTask1]);

          when(() => mockTaskService.getTaskStats(homeId: testHome.id))
              .thenAnswer((_) async => testStats);
        },
        build: () => tasksBloc,
        seed: () => TasksState(home: testHome, uiStatus: TasksUiStatus.loaded),
        act: (bloc) => bloc.add(
          const ApplyFilters(
            status: TaskStatus.todo,
            assignedToUserId: 'user-1',
            priority: Priority.high,
            showMyTasksOnly: true,
          ),
        ),
        expect: () => [
          TasksState(
            home: testHome,
            uiStatus: TasksUiStatus.loaded,
            filters: const TaskFilters(
              status: TaskStatus.todo,
              assignedToUserId: 'user-1',
              priority: Priority.high,
              showMyTasksOnly: true,
            ),
          ),
          TasksState(
            home: testHome,
            uiStatus: TasksUiStatus.loading,
            filters: const TaskFilters(
              status: TaskStatus.todo,
              assignedToUserId: 'user-1',
              priority: Priority.high,
              showMyTasksOnly: true,
            ),
          ),
          TasksState(
            home: testHome,
            uiStatus: TasksUiStatus.loaded,
            tasks: [testTask1],
            taskStats: testStats,
            filters: const TaskFilters(
              status: TaskStatus.todo,
              assignedToUserId: 'user-1',
              priority: Priority.high,
              showMyTasksOnly: true,
            ),
          ),
        ],
      );
    });

    group('ApplySorting', () {
      blocTest<TasksBloc, TasksState>(
        'applies sorting and reloads tasks',
        setUp: () {
          when(
            () => mockTaskService.getTasksForHome(
              homeId: testHome.id,
              status: null,
              assignedToUserId: null,
              priority: null,
            ),
          ).thenAnswer((_) async => [testTask1, testTask2]);

          when(() => mockTaskService.getTaskStats(homeId: testHome.id))
              .thenAnswer((_) async => testStats);
        },
        build: () => tasksBloc,
        seed: () => TasksState(home: testHome, uiStatus: TasksUiStatus.loaded),
        act: (bloc) => bloc.add(
          const ApplySorting(
            sortBy: TaskSortBy.priority,
            sortOrder: SortOrder.ascending,
          ),
        ),
        expect: () => [
          TasksState(
            home: testHome,
            uiStatus: TasksUiStatus.loaded,
            sort: const TaskSort(
              sortBy: TaskSortBy.priority,
              sortOrder: SortOrder.ascending,
            ),
          ),
          TasksState(
            home: testHome,
            uiStatus: TasksUiStatus.loading,
            sort: const TaskSort(
              sortBy: TaskSortBy.priority,
              sortOrder: SortOrder.ascending,
            ),
          ),
          TasksState(
            home: testHome,
            uiStatus: TasksUiStatus.loaded,
            tasks: [testTask1, testTask2],
            taskStats: testStats,
            sort: const TaskSort(
              sortBy: TaskSortBy.priority,
              sortOrder: SortOrder.ascending,
            ),
          ),
        ],
      );
    });

    group('ClearFilters', () {
      blocTest<TasksBloc, TasksState>(
        'clears filters and sorting, then reloads tasks',
        setUp: () {
          when(
            () => mockTaskService.getTasksForHome(
              homeId: testHome.id,
              status: null,
              assignedToUserId: null,
              priority: null,
            ),
          ).thenAnswer((_) async => [testTask1, testTask2, testTask3]);

          when(() => mockTaskService.getTaskStats(homeId: testHome.id))
              .thenAnswer((_) async => testStats);
        },
        build: () => tasksBloc,
        seed: () => TasksState(
          home: testHome,
          uiStatus: TasksUiStatus.loaded,
          filters: const TaskFilters(status: TaskStatus.todo),
          sort: const TaskSort(
            sortBy: TaskSortBy.priority,
            sortOrder: SortOrder.ascending,
          ),
        ),
        act: (bloc) => bloc.add(ClearFilters()),
        expect: () => [
          TasksState(
            home: testHome,
            uiStatus: TasksUiStatus.loaded,
            filters: const TaskFilters(),
            sort: const TaskSort(),
          ),
          TasksState(
            home: testHome,
            uiStatus: TasksUiStatus.loading,
            filters: const TaskFilters(),
            sort: const TaskSort(),
          ),
          TasksState(
            home: testHome,
            uiStatus: TasksUiStatus.loaded,
            tasks: [testTask1, testTask2, testTask3],
            taskStats: testStats,
            filters: const TaskFilters(),
            sort: const TaskSort(),
          ),
        ],
      );
    });

    group('ToggleSubTask', () {
      blocTest<TasksBloc, TasksState>(
        'logs subtask toggle action',
        build: () => tasksBloc,
        seed: () => TasksState(
          home: testHome,
          tasks: [testTask1],
          uiStatus: TasksUiStatus.loaded,
        ),
        act: (bloc) => bloc.add(ToggleSubTask(task: testTask1, subTaskIndex: 0)),
        expect: () => [],
        verify: (_) {
          // This event currently only logs - no state changes expected
          // Verify the event was processed without error
        },
      );
    });
  });
}
