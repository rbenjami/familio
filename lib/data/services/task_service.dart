import 'package:familio/blocs/auth/auth_bloc.dart';
import 'package:familio/brick/models/task.model.dart';
import 'package:familio/brick/models/sub_task.model.dart';
import 'package:familio/brick/models/task_assignee.model.dart';
import 'package:familio/brick/models/home.model.dart';
import 'package:familio/brick/models/user.model.dart';
import 'package:familio/brick/repository.dart';
import 'package:familio/di/injection.dart';
import 'package:familio/main.dart';
import 'package:injectable/injectable.dart';
import 'package:brick_core/core.dart';

@singleton
class TaskService {
  final Repository _repository;

  TaskService(this._repository);

  Future<Task> createTask({
    required String homeId,
    required String title,
    String? description,
    required List<String> assignedToUserIds,
    DateTime? dueDate,
    Priority priority = Priority.medium,
    DateTime? startDate,
    int? estimatedDurationMinutes,
    List<String>? tags,
    String? location,
  }) async {
    try {
      logger.info('Creating task: $title in home: $homeId');

      final task = await _repository.upsert<Task>(
        Task(
          id: '',
          home: Home.stub(homeId),
          title: title,
          description: description,
          createdBy: getIt<AuthBloc>().state.currentUser!,
          status: TaskStatus.pending,
          dueDate: dueDate,
          priority: priority,
          startDate: startDate,
          estimatedDurationMinutes: estimatedDurationMinutes,
          location: location,
          tags: tags ?? [],
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      );

      // Create task assignees
      for (final userId in assignedToUserIds) {
        await _repository.upsert<TaskAssignee>(
          TaskAssignee(
            id: '',
            task: Task.stub(task.id),
            user: User.stub(userId),
            assignedAt: DateTime.now(),
          ),
        );
      }

      logger.info('Task created successfully: ${task.id}');
      return task;
    } catch (e, s) {
      logger.error('Error creating task: $e', e, s);
      rethrow;
    }
  }

  Future<Task> updateTask({
    required String taskId,
    String? title,
    String? description,
    DateTime? dueDate,
    Priority? priority,
    TaskStatus? status,
    DateTime? startDate,
    int? estimatedDurationMinutes,
    String? location,
    List<String>? tags,
  }) async {
    try {
      logger.info('Updating task: $taskId');

      // Get existing task
      final existingTask = (await _repository.get<Task>(
        query: Query(where: [Where('id').isExactly(taskId)]),
      )).first;

      final task = await _repository.upsert<Task>(
        Task(
          id: existingTask.id,
          home: existingTask.home,
          title: title ?? existingTask.title,
          description: description ?? existingTask.description,
          createdBy: existingTask.createdBy,
          status: status ?? existingTask.status,
          dueDate: dueDate ?? existingTask.dueDate,
          priority: priority ?? existingTask.priority,
          startDate: startDate ?? existingTask.startDate,
          estimatedDurationMinutes:
              estimatedDurationMinutes ?? existingTask.estimatedDurationMinutes,
          location: location ?? existingTask.location,
          tags: tags ?? existingTask.tags,
          createdAt: existingTask.createdAt,
          updatedAt: DateTime.now(),
        ),
      );

      logger.info('Task updated successfully: ${task.id}');
      return task;
    } catch (e, s) {
      logger.error('Error updating task: $e', e, s);
      rethrow;
    }
  }

  Future<Task> getTaskById(String taskId) async {
    try {
      logger.info('Fetching task: $taskId');

      final task = (await _repository.get<Task>(
        query: Query(where: [Where('id').isExactly(taskId)]),
      )).first;

      logger.info('Task found: ${task.title}');
      return task;
    } catch (e, s) {
      logger.error('Error fetching task: $e', e, s);
      rethrow;
    }
  }

  Future<List<Task>> getTasksForHome({
    required String homeId,
    TaskStatus? status,
    String? assignedToUserId,
    Priority? priority,
  }) async {
    try {
      logger.info('Fetching tasks for home: $homeId');

      final tasks = await _repository.get<Task>(
        query: Query(
          where: [
            Where('home', value: Where('id').isExactly(homeId)),
            if (status != null) Where('status').isExactly(status),
            if (assignedToUserId != null)
              Where('assignedToUserId').isExactly(assignedToUserId),
            if (priority != null) Where('priority').isExactly(priority),
          ],
        ),
      );

      logger.info('Found ${tasks.length} tasks for home: $homeId');
      return tasks;
    } catch (e, s) {
      logger.error('Error fetching tasks: $e', e, s);
      rethrow;
    }
  }

  Future<List<TaskAssignee>> getTaskAssignees(String taskId) async {
    try {
      logger.info('Fetching assignees for task: $taskId');

      final assignees = await _repository.get<TaskAssignee>(
        query: Query(
          where: [Where('task', value: Where('id').isExactly(taskId))],
        ),
      );

      logger.info('Found ${assignees.length} assignees for task: $taskId');
      return assignees;
    } catch (e, s) {
      logger.error('Error fetching task assignees: $e', e, s);
      rethrow;
    }
  }

  Future<void> deleteTask(String taskId) async {
    try {
      logger.info('Deleting task: $taskId');

      final task = (await _repository.get<Task>(
        query: Query(where: [Where('id').isExactly(taskId)]),
      )).first;

      await _repository.delete<Task>(task);

      logger.info('Task deleted successfully: $taskId');
    } catch (e, s) {
      logger.error('Error deleting task: $e', e, s);
      rethrow;
    }
  }

  Future<List<SubTask>> getSubTasks(String taskId) async {
    try {
      logger.info('Fetching subtasks for task: $taskId');

      final subTasks = await _repository.get<SubTask>(
        query: Query(
          where: [Where('task', value: Where('id').isExactly(taskId))],
        ),
      );

      logger.info('Found ${subTasks.length} subtasks for task: $taskId');
      return subTasks;
    } catch (e, s) {
      logger.error('Error fetching subtasks: $e', e, s);
      rethrow;
    }
  }

  Future<SubTask> createSubTask({
    required String taskId,
    required String title,
    required int orderIndex,
  }) async {
    try {
      logger.info('Creating subtask: $title for task: $taskId');

      final subTask = await _repository.upsert<SubTask>(
        SubTask(
          id: '',
          task: Task.stub(taskId),
          title: title,
          isCompleted: false,
          orderIndex: orderIndex,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      );

      logger.info('Subtask created successfully: ${subTask.id}');
      return subTask;
    } catch (e, s) {
      logger.error('Error creating subtask: $e', e, s);
      rethrow;
    }
  }

  Future<SubTask> updateSubTask({
    required String subTaskId,
    String? title,
    bool? isCompleted,
    int? orderIndex,
  }) async {
    try {
      logger.info('Updating subtask: $subTaskId');

      // Get existing subtask
      final existingSubTask = (await _repository.get<SubTask>(
        query: Query(where: [Where('id').isExactly(subTaskId)]),
      )).first;

      final subTask = await _repository.upsert<SubTask>(
        SubTask(
          id: existingSubTask.id,
          task: existingSubTask.task,
          title: title ?? existingSubTask.title,
          isCompleted: isCompleted ?? existingSubTask.isCompleted,
          orderIndex: orderIndex ?? existingSubTask.orderIndex,
          createdAt: existingSubTask.createdAt,
          updatedAt: DateTime.now(),
        ),
      );

      logger.info('Subtask updated successfully: ${subTask.id}');
      return subTask;
    } catch (e, s) {
      logger.error('Error updating subtask: $e', e, s);
      rethrow;
    }
  }

  Future<void> deleteSubTask(String subTaskId) async {
    try {
      logger.info('Deleting subtask: $subTaskId');

      final subTask = (await _repository.get<SubTask>(
        query: Query(where: [Where('id').isExactly(subTaskId)]),
      )).first;

      await _repository.delete<SubTask>(subTask);

      logger.info('Subtask deleted successfully: $subTaskId');
    } catch (e, s) {
      logger.error('Error deleting subtask: $e', e, s);
      rethrow;
    }
  }

  Future<void> assignUserToTask({
    required String taskId,
    required String userId,
  }) async {
    try {
      logger.info('Assigning user $userId to task $taskId');

      await _repository.upsert<TaskAssignee>(
        TaskAssignee(
          id: '',
          task: Task.stub(taskId),
          user: User.stub(userId),
          assignedAt: DateTime.now(),
        ),
      );

      logger.info('User assigned to task successfully');
    } catch (e, s) {
      logger.error('Error assigning user to task: $e', e, s);
      rethrow;
    }
  }

  Future<void> unassignUserFromTask({
    required String taskId,
    required String userId,
  }) async {
    try {
      logger.info('Unassigning user $userId from task $taskId');

      final assignees = await _repository.get<TaskAssignee>(
        query: Query(
          where: [
            Where('task', value: Where('id').isExactly(taskId)),
            Where('user', value: Where('id').isExactly(userId)),
          ],
        ),
      );

      for (final assignee in assignees) {
        await _repository.delete<TaskAssignee>(assignee);
      }

      logger.info('User unassigned from task successfully');
    } catch (e, s) {
      logger.error('Error unassigning user from task: $e', e, s);
      rethrow;
    }
  }

  Future<Map<String, int>> getTaskStats({
    required String homeId,
    String? userId,
  }) async {
    try {
      logger.info('Fetching task stats for home: $homeId');

      var tasks = await _repository.get<Task>(
        query: Query(
          where: [Where('home', value: Where('id').isExactly(homeId))],
        ),
      );

      // Filter by user if specified
      if (userId != null) {
        final filteredTasks = <Task>[];
        for (final task in tasks) {
          final assignees = await getTaskAssignees(task.id);
          if (assignees.any((assignee) => assignee.user.id == userId)) {
            filteredTasks.add(task);
          }
        }
        tasks = filteredTasks;
      }

      final stats = <String, int>{
        'total': tasks.length,
        'pending': tasks.where((t) => t.status == TaskStatus.pending).length,
        'in_progress': tasks
            .where((t) => t.status == TaskStatus.in_progress)
            .length,
        'completed': tasks
            .where((t) => t.status == TaskStatus.completed)
            .length,
        'cancelled': tasks
            .where((t) => t.status == TaskStatus.cancelled)
            .length,
        'overdue': tasks
            .where(
              (t) =>
                  t.dueDate != null &&
                  t.dueDate!.isBefore(DateTime.now()) &&
                  t.status != TaskStatus.completed,
            )
            .length,
      };

      logger.info('Task stats calculated: $stats');
      return stats;
    } catch (e, s) {
      logger.error('Error calculating task stats: $e', e, s);
      rethrow;
    }
  }
}
