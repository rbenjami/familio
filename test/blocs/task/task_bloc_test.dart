import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:familio/blocs/task/task_bloc.dart';
import 'package:familio/blocs/task/task_event.dart';
import 'package:familio/blocs/task/task_state.dart';
import 'package:familio/data/services/task_service.dart';
import 'package:familio/data/services/home_service.dart';
import 'package:familio/brick/models/models.dart';

// Mock classes
class MockTaskService extends Mock implements TaskService {}

class MockHomeService extends Mock implements HomeService {}

void main() {
  late TaskBloc taskBloc;
  late MockTaskService mockTaskService;
  late MockHomeService mockHomeService;

  // Test data
  final testHome = Home(
    id: 'home-1',
    name: 'Test Home',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  final testUser1 = User(
    id: 'user-1',
    authId: 'auth-1',
    name: 'User 1',
    email: 'user1@example.com',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  final testUser2 = User(
    id: 'user-2',
    authId: 'auth-2',
    name: 'User 2',
    email: 'user2@example.com',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  final testTask = Task(
    id: 'task-1',
    home: testHome,
    title: 'Test Task',
    description: 'Test Description',
    status: TaskStatus.todo,
    priority: Priority.high,
    dueDate: DateTime.now().add(const Duration(days: 1)),
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  final testSubTask1 = SubTask(
    id: 'subtask-1',
    task: testTask,
    title: 'SubTask 1',
    isCompleted: false,
    orderIndex: 0,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  final testSubTask2 = SubTask(
    id: 'subtask-2',
    task: testTask,
    title: 'SubTask 2',
    isCompleted: true,
    orderIndex: 1,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  setUp(() {
    mockTaskService = MockTaskService();
    mockHomeService = MockHomeService();
  });

  tearDown(() {
    taskBloc.close();
  });

  group('TaskBloc - Creation Mode', () {
    setUp(() {
      taskBloc = TaskBloc(
        mockTaskService,
        mockHomeService,
        home: testHome,
        existingTask: null,
      );
    });

    test('initial state has correct defaults for creation mode', () {
      expect(
        taskBloc.state,
        const TaskState(
          uiStatus: TaskUiStatus.initial,
          title: '',
          description: '',
          priority: Priority.medium,
        ),
      );
      expect(taskBloc.state.isEditing, false);
    });

    group('TaskInitialized', () {
      blocTest<TaskBloc, TaskState>(
        'emits [loading, loaded] with available members when initialization succeeds',
        setUp: () {
          when(() => mockHomeService.getHomeUserMembers(testHome.id))
              .thenAnswer((_) async => [testUser1, testUser2]);
        },
        build: () => taskBloc,
        act: (bloc) => bloc.add(const TaskInitialized()),
        expect: () => [
          const TaskState(uiStatus: TaskUiStatus.loading),
          TaskState(
            uiStatus: TaskUiStatus.loaded,
            home: testHome,
            availableUserMembers: [testUser1, testUser2],
          ),
        ],
      );

      blocTest<TaskBloc, TaskState>(
        'emits [loading, error] when initialization fails',
        setUp: () {
          when(() => mockHomeService.getHomeUserMembers(testHome.id))
              .thenThrow(Exception('Failed to load members'));
        },
        build: () => taskBloc,
        act: (bloc) => bloc.add(const TaskInitialized()),
        expect: () => [
          const TaskState(uiStatus: TaskUiStatus.loading),
          isA<TaskState>()
              .having((s) => s.uiStatus, 'uiStatus', TaskUiStatus.error)
              .having((s) => s.error, 'error', isNotNull),
        ],
      );
    });

    group('TaskTitleChanged', () {
      blocTest<TaskBloc, TaskState>(
        'updates title and sets hasUnsavedChanges to true',
        build: () => taskBloc,
        act: (bloc) => bloc.add(const TaskTitleChanged('New Title')),
        expect: () => [
          const TaskState(title: 'New Title', hasUnsavedChanges: true),
        ],
      );
    });

    group('TaskDescriptionChanged', () {
      blocTest<TaskBloc, TaskState>(
        'updates description and sets hasUnsavedChanges to true',
        build: () => taskBloc,
        act: (bloc) =>
            bloc.add(const TaskDescriptionChanged('New Description')),
        expect: () => [
          const TaskState(
            description: 'New Description',
            hasUnsavedChanges: true,
          ),
        ],
      );
    });

    group('TaskDueDateChanged', () {
      blocTest<TaskBloc, TaskState>(
        'updates dueDate and sets hasUnsavedChanges to true',
        build: () => taskBloc,
        act: (bloc) {
          final newDate = DateTime(2025, 12, 31);
          bloc.add(TaskDueDateChanged(newDate));
        },
        expect: () => [
          TaskState(
            dueDate: DateTime(2025, 12, 31),
            hasUnsavedChanges: true,
          ),
        ],
      );
    });

    group('TaskPriorityChanged', () {
      blocTest<TaskBloc, TaskState>(
        'updates priority and sets hasUnsavedChanges to true',
        build: () => taskBloc,
        act: (bloc) => bloc.add(const TaskPriorityChanged(Priority.high)),
        expect: () => [
          const TaskState(priority: Priority.high, hasUnsavedChanges: true),
        ],
      );
    });

    group('TaskAssigneeToggled', () {
      blocTest<TaskBloc, TaskState>(
        'adds user to assignedTo list when user is not present',
        build: () => taskBloc,
        seed: () => const TaskState(assignedTo: []),
        act: (bloc) => bloc.add(const TaskAssigneeToggled('user-1')),
        expect: () => [
          const TaskState(assignedTo: ['user-1'], hasUnsavedChanges: true),
        ],
      );

      blocTest<TaskBloc, TaskState>(
        'removes user from assignedTo list when user is already present',
        build: () => taskBloc,
        seed: () => const TaskState(assignedTo: ['user-1', 'user-2']),
        act: (bloc) => bloc.add(const TaskAssigneeToggled('user-1')),
        expect: () => [
          const TaskState(assignedTo: ['user-2'], hasUnsavedChanges: true),
        ],
      );
    });

    group('TaskSubmitted', () {
      blocTest<TaskBloc, TaskState>(
        'emits error when title is empty',
        build: () => taskBloc,
        seed: () => const TaskState(title: ''),
        act: (bloc) => bloc.add(TaskSubmitted()),
        expect: () => [
          const TaskState(
            uiStatus: TaskUiStatus.error,
            error: 'Title is required',
          ),
        ],
      );

      blocTest<TaskBloc, TaskState>(
        'creates task successfully when data is valid',
        setUp: () {
          when(
            () => mockTaskService.createTask(
              homeId: testHome.id,
              title: 'Test Title',
              description: null,
              assignedToUserIds: [],
              dueDate: null,
              priority: Priority.medium,
            ),
          ).thenAnswer((_) async => testTask);
        },
        build: () => taskBloc,
        seed: () => TaskState(
          home: testHome,
          title: 'Test Title',
          description: '',
          priority: Priority.medium,
          assignedTo: const [],
        ),
        act: (bloc) => bloc.add(TaskSubmitted()),
        expect: () => [
          TaskState(
            home: testHome,
            title: 'Test Title',
            description: '',
            priority: Priority.medium,
            assignedTo: const [],
            uiStatus: TaskUiStatus.creating,
          ),
          TaskState(
            home: testHome,
            title: 'Test Title',
            description: '',
            priority: Priority.medium,
            assignedTo: const [],
            uiStatus: TaskUiStatus.created,
            hasUnsavedChanges: false,
          ),
        ],
      );

      blocTest<TaskBloc, TaskState>(
        'emits error when task creation fails',
        setUp: () {
          when(
            () => mockTaskService.createTask(
              homeId: testHome.id,
              title: 'Test Title',
              description: null,
              assignedToUserIds: [],
              dueDate: null,
              priority: Priority.medium,
            ),
          ).thenThrow(Exception('Failed to create task'));
        },
        build: () => taskBloc,
        seed: () => TaskState(
          home: testHome,
          title: 'Test Title',
          description: '',
          priority: Priority.medium,
          assignedTo: const [],
        ),
        act: (bloc) => bloc.add(TaskSubmitted()),
        expect: () => [
          TaskState(
            home: testHome,
            title: 'Test Title',
            description: '',
            priority: Priority.medium,
            assignedTo: const [],
            uiStatus: TaskUiStatus.creating,
          ),
          isA<TaskState>()
              .having((s) => s.uiStatus, 'uiStatus', TaskUiStatus.error)
              .having((s) => s.error, 'error', isNotNull),
        ],
      );
    });
  });

  group('TaskBloc - Editing Mode', () {
    setUp(() {
      taskBloc = TaskBloc(
        mockTaskService,
        mockHomeService,
        home: testHome,
        existingTask: testTask,
      );
    });

    test('initial state has correct defaults for editing mode', () {
      expect(taskBloc.state.isEditing, false); // Initially false until initialized
    });

    group('TaskInitialized', () {
      blocTest<TaskBloc, TaskState>(
        'emits [loading, loaded] with task data when initialization succeeds in edit mode',
        setUp: () {
          when(() => mockHomeService.getHomeUserMembers(testHome.id))
              .thenAnswer((_) async => [testUser1, testUser2]);
          when(() => mockTaskService.getSubTasks(testTask.id))
              .thenAnswer((_) async => [testSubTask1, testSubTask2]);
          when(() => mockTaskService.getTaskAssignees(testTask.id))
              .thenAnswer((_) async => [
                    TaskAssignee(
                      id: 'assignee-1',
                      task: testTask,
                      user: testUser1,
                      createdAt: DateTime.now(),
                      updatedAt: DateTime.now(),
                    ),
                  ]);
        },
        build: () => taskBloc,
        act: (bloc) => bloc.add(const TaskInitialized()),
        expect: () => [
          const TaskState(uiStatus: TaskUiStatus.loading),
          TaskState(
            uiStatus: TaskUiStatus.loaded,
            home: testHome,
            task: testTask,
            title: testTask.title,
            description: testTask.description ?? '',
            dueDate: testTask.dueDate,
            priority: testTask.priority,
            assignedTo: [testUser1.id],
            subTasks: [testSubTask1, testSubTask2],
            availableUserMembers: [testUser1, testUser2],
          ),
        ],
      );
    });

    group('SubTaskRemoved', () {
      blocTest<TaskBloc, TaskState>(
        'removes subtask from list and sets hasUnsavedChanges to true',
        build: () => taskBloc,
        seed: () => TaskState(subTasks: [testSubTask1, testSubTask2]),
        act: (bloc) => bloc.add(SubTaskRemoved(testSubTask1.id)),
        expect: () => [
          TaskState(subTasks: [testSubTask2], hasUnsavedChanges: true),
        ],
      );
    });

    group('SubTaskTitleChanged', () {
      blocTest<TaskBloc, TaskState>(
        'adds new subtask when id is empty',
        build: () => taskBloc,
        seed: () => TaskState(task: testTask, subTasks: []),
        act: (bloc) => bloc.add(const SubTaskTitleChanged('', 'New SubTask')),
        expect: () => [
          isA<TaskState>()
              .having((s) => s.subTasks.length, 'subTasks.length', 1)
              .having((s) => s.subTasks.first.title, 'subTasks.first.title',
                  'New SubTask')
              .having((s) => s.hasUnsavedChanges, 'hasUnsavedChanges', true),
        ],
      );

      blocTest<TaskBloc, TaskState>(
        'updates existing subtask when id matches',
        build: () => taskBloc,
        seed: () => TaskState(subTasks: [testSubTask1]),
        act: (bloc) =>
            bloc.add(SubTaskTitleChanged(testSubTask1.id, 'Updated Title')),
        expect: () => [
          isA<TaskState>()
              .having((s) => s.subTasks.length, 'subTasks.length', 1)
              .having((s) => s.subTasks.first.title, 'subTasks.first.title',
                  'Updated Title')
              .having((s) => s.hasUnsavedChanges, 'hasUnsavedChanges', true),
        ],
      );
    });

    group('SubTaskToggled', () {
      blocTest<TaskBloc, TaskState>(
        'toggles subtask completion status',
        build: () => taskBloc,
        seed: () => TaskState(subTasks: [testSubTask1]),
        act: (bloc) => bloc.add(SubTaskToggled(testSubTask1.id, true)),
        expect: () => [
          isA<TaskState>()
              .having((s) => s.subTasks.first.isCompleted,
                  'subTasks.first.isCompleted', true)
              .having((s) => s.hasUnsavedChanges, 'hasUnsavedChanges', true),
        ],
      );
    });

    group('TaskSubmitted - Edit Mode', () {
      blocTest<TaskBloc, TaskState>(
        'updates task successfully when data is valid',
        setUp: () {
          when(
            () => mockTaskService.updateTask(
              taskId: testTask.id,
              title: 'Updated Title',
              description: 'Updated Description',
              dueDate: any(named: 'dueDate'),
              priority: Priority.high,
            ),
          ).thenAnswer((_) async => testTask);

          when(() => mockTaskService.getSubTasks(testTask.id))
              .thenAnswer((_) async => []);
        },
        build: () => taskBloc,
        seed: () => TaskState(
          task: testTask,
          title: 'Updated Title',
          description: 'Updated Description',
          priority: Priority.high,
        ),
        act: (bloc) => bloc.add(TaskSubmitted()),
        expect: () => [
          TaskState(
            task: testTask,
            title: 'Updated Title',
            description: 'Updated Description',
            priority: Priority.high,
            uiStatus: TaskUiStatus.updating,
          ),
          TaskState(
            task: testTask,
            title: 'Updated Title',
            description: 'Updated Description',
            priority: Priority.high,
            uiStatus: TaskUiStatus.updated,
            hasUnsavedChanges: false,
          ),
        ],
      );
    });
  });
}
