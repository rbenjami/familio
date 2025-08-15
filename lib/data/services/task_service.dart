import 'package:familio/main.dart';
import 'package:injectable/injectable.dart';

import '../models/models.dart';

@singleton
class TaskService {
  TaskService();

  /// Create a new task
  Future<Task> createTask({
    required String homeId,
    required String title,
    String? description,
    required List<String> assignedToIds,
    required String createdById,
    DateTime? dueDate,
    Priority priority = Priority.medium,
    TaskType type = TaskType.simple,
    DateTime? startDate,
    int? estimatedDurationMinutes,
    List<SubTask>? subTasks,
    List<String>? tags,
    String? location,
  }) async {
    try {
      logger.info('Creating task: $title in home: $homeId');

      final now = DateTime.now();

      final task = Task(
        title: title,
        description: description,
        homeId: homeId,
        assignedToIds: assignedToIds,
        createdById: createdById,
        status: TaskStatus.todo,
        dueDate: dueDate,
        priority: priority,
        createdAt: now,
        updatedAt: now,
        type: type,
        startDate: startDate,
        estimatedDurationMinutes: estimatedDurationMinutes,
        subTasks: subTasks ?? [],
        tags: tags ?? [],
        location: location,
      );

      // Save to Firestore using ODM reference
      final taskDoc = await homesRef.doc(homeId).tasks.add(task);
      final taskId = taskDoc.id;

      logger.info('Task created successfully: $taskId');
      return task.copyWith(id: taskId);
    } catch (e) {
      logger.error('Error creating task: $e');
      rethrow;
    }
  }

  /// Update an existing task
  Future<Task> updateTask({
    required String homeId,
    required String taskId,
    String? title,
    String? description,
    List<String>? assignedToIds,
    TaskStatus? status,
    DateTime? dueDate,
    Priority? priority,
    TaskType? type,
    DateTime? startDate,
    int? estimatedDurationMinutes,
    List<SubTask>? subTasks,
    List<String>? tags,
    String? location,
  }) async {
    try {
      logger.info('Updating task: $taskId in home: $homeId');

      final taskRef = homesRef.doc(homeId).tasks.doc(taskId);
      final taskDoc = await taskRef.get();

      if (!taskDoc.exists) {
        throw Exception('Task not found: $taskId');
      }

      final currentTask = taskDoc.data!;
      final updatedTask = currentTask.copyWith(
        title: title ?? currentTask.title,
        description: description ?? currentTask.description,
        assignedToIds: assignedToIds ?? currentTask.assignedToIds,
        status: status ?? currentTask.status,
        dueDate: dueDate ?? currentTask.dueDate,
        priority: priority ?? currentTask.priority,
        type: type ?? currentTask.type,
        startDate: startDate ?? currentTask.startDate,
        estimatedDurationMinutes: estimatedDurationMinutes ?? currentTask.estimatedDurationMinutes,
        subTasks: subTasks ?? currentTask.subTasks,
        tags: tags ?? currentTask.tags,
        location: location ?? currentTask.location,
        updatedAt: DateTime.now(),
      );

      await taskRef.set(updatedTask);

      logger.info('Task updated successfully: $taskId');
      return updatedTask;
    } catch (e) {
      logger.error('Error updating task: $e');
      rethrow;
    }
  }

  /// Delete a task
  Future<void> deleteTask({
    required String homeId,
    required String taskId,
  }) async {
    try {
      logger.info('Deleting task: $taskId from home: $homeId');

      final taskRef = homesRef.doc(homeId).tasks.doc(taskId);
      await taskRef.delete();

      logger.info('Task deleted successfully: $taskId');
    } catch (e) {
      logger.error('Error deleting task: $e');
      rethrow;
    }
  }

  /// Get task by ID
  Future<Task?> getTaskById({
    required String homeId,
    required String taskId,
  }) async {
    try {
      logger.info('Fetching task: $taskId from home: $homeId');

      final taskDoc = await homesRef.doc(homeId).tasks.doc(taskId).get();

      if (taskDoc.exists) {
        final task = taskDoc.data!;
        logger.info('Task found: ${task.title}');
        return task;
      } else {
        logger.info('No task found with ID: $taskId');
        return null;
      }
    } catch (e) {
      logger.error('Error fetching task: $e');
      rethrow;
    }
  }

  /// Get all tasks for a home
  Stream<List<Task>> getTasksStream({
    required String homeId,
    TaskStatus? status,
    String? assignedToId,
    Priority? priority,
    TaskType? type,
  }) {
    try {
      logger.info('Getting tasks stream for home: $homeId');

      return homesRef.doc(homeId).tasks.snapshots().map((snapshot) {
        var tasks = snapshot.docs.map((doc) => doc.data).toList();

        // Apply filters manually since ODM doesn't support complex queries directly
        if (status != null) {
          tasks = tasks.where((task) => task.status == status).toList();
        }
        if (assignedToId != null) {
          tasks = tasks.where((task) => task.assignedToIds.contains(assignedToId)).toList();
        }
        if (priority != null) {
          tasks = tasks.where((task) => task.priority == priority).toList();
        }
        if (type != null) {
          tasks = tasks.where((task) => task.type == type).toList();
        }

        // Sort by creation date (newest first)
        tasks.sort((a, b) => b.createdAt.compareTo(a.createdAt));

        return tasks;
      });
    } catch (e) {
      logger.error('Error getting tasks stream: $e');
      rethrow;
    }
  }

  /// Update task status
  Future<Task> updateTaskStatus({
    required String homeId,
    required String taskId,
    required TaskStatus status,
  }) async {
    return updateTask(
      homeId: homeId,
      taskId: taskId,
      status: status,
    );
  }

  /// Toggle subtask completion
  Future<Task> toggleSubTaskCompletion({
    required String homeId,
    required String taskId,
    required int subTaskIndex,
  }) async {
    try {
      logger.info('Toggling subtask completion: $subTaskIndex for task: $taskId');

      final task = await getTaskById(homeId: homeId, taskId: taskId);
      if (task == null) {
        throw Exception('Task not found: $taskId');
      }

      if (subTaskIndex < 0 || subTaskIndex >= task.subTasks.length) {
        throw Exception('Invalid subtask index: $subTaskIndex');
      }

      final updatedSubTasks = List<SubTask>.from(task.subTasks);
      final currentSubTask = updatedSubTasks[subTaskIndex];
      updatedSubTasks[subTaskIndex] = currentSubTask.copyWith(
        isCompleted: !currentSubTask.isCompleted,
      );

      return updateTask(
        homeId: homeId,
        taskId: taskId,
        subTasks: updatedSubTasks,
      );
    } catch (e) {
      logger.error('Error toggling subtask completion: $e');
      rethrow;
    }
  }

  /// Get tasks assigned to a specific user
  Stream<List<Task>> getMyTasksStream({
    required String homeId,
    required String userId,
    TaskStatus? status,
  }) {
    return getTasksStream(
      homeId: homeId,
      assignedToId: userId,
      status: status,
    );
  }

  /// Get task completion statistics
  Future<Map<String, int>> getTaskStats({
    required String homeId,
    String? assignedToId,
  }) async {
    try {
      logger.info('Getting task stats for home: $homeId');

      final snapshot = await homesRef.doc(homeId).tasks.get();
      var tasks = snapshot.docs.map((doc) => doc.data).toList();
      
      if (assignedToId != null) {
        tasks = tasks.where((task) => task.assignedToIds.contains(assignedToId)).toList();
      }

      final stats = <String, int>{
        'total': tasks.length,
        'todo': tasks.where((t) => t.status == TaskStatus.todo).length,
        'doing': tasks.where((t) => t.status == TaskStatus.doing).length,
        'done': tasks.where((t) => t.status == TaskStatus.done).length,
        'overdue': tasks.where((t) => 
          t.dueDate != null && 
          t.dueDate!.isBefore(DateTime.now()) && 
          t.status != TaskStatus.done
        ).length,
      };

      logger.info('Task stats calculated: $stats');
      return stats;
    } catch (e) {
      logger.error('Error getting task stats: $e');
      rethrow;
    }
  }
}