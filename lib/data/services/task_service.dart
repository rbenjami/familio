import 'package:familio/blocs/tasks/tasks_state.dart';
import 'package:familio/main.dart';
import 'package:injectable/injectable.dart';

import '../models/models.dart';

@singleton
class TaskService {
  TaskService();

  /// Create a new task
  Future<TaskDocumentReference> createTask({
    required HomeDocumentReference home,
    required String title,
    String? description,
    required List<UserDocumentReference> assignedTo,
    required UserDocumentReference createdBy,
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
      logger.info('Creating task: $title in home: $home');

      final now = DateTime.now();

      final task = Task(
        title: title,
        description: description,
        assignedTo: assignedTo.map((ref) => ref.reference).toList(),
        createdBy: createdBy.reference,
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
      final taskRef = await homesRef.doc(home.id).tasks.add(task);

      logger.info('Task created successfully: ${taskRef.id}');
      return taskRef;
    } catch (e) {
      logger.error('Error creating task: $e');
      rethrow;
    }
  }

  /// Update an existing task
  Future<TaskDocumentReference> updateTask({
    required TaskDocumentReference task,
    String? title,
    String? description,
    List<UserDocumentReference>? assignedTo,
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
      logger.info('Updating task: $task');

      final taskRef = task.ref;
      final taskDoc = await taskRef.get();

      if (!taskDoc.exists) {
        throw Exception('Task not found: $task');
      }

      final currentTask = taskDoc.data!;
      final updatedTask = currentTask.copyWith(
        title: title ?? currentTask.title,
        description: description ?? currentTask.description,
        assignedTo:
            assignedTo?.map((ref) => ref.reference).toList() ??
            currentTask.assignedTo,
        status: status ?? currentTask.status,
        dueDate: dueDate ?? currentTask.dueDate,
        priority: priority ?? currentTask.priority,
        type: type ?? currentTask.type,
        startDate: startDate ?? currentTask.startDate,
        estimatedDurationMinutes:
            estimatedDurationMinutes ?? currentTask.estimatedDurationMinutes,
        subTasks: subTasks ?? currentTask.subTasks,
        tags: tags ?? currentTask.tags,
        location: location ?? currentTask.location,
        updatedAt: DateTime.now(),
      );

      await taskRef.set(updatedTask);

      logger.info('Task updated successfully: $task');
      return taskRef;
    } catch (e) {
      logger.error('Error updating task: $e');
      rethrow;
    }
  }

  /// Delete a task
  Future<void> deleteTask({required TaskDocumentReference task}) async {
    try {
      logger.info('Deleting task: $task');

      await task.delete();

      logger.info('Task deleted successfully: $task');
    } catch (e) {
      logger.error('Error deleting task: $e');
      rethrow;
    }
  }

  /// Get task by ID
  Future<Task?> getTask({
    required HomeDocumentReference home,
    required TaskDocumentReference task,
  }) async {
    try {
      logger.info('Fetching task: $task from home: $home');

      final taskDoc = await homesRef.doc(home.id).tasks.doc(task.id).get();

      if (taskDoc.exists) {
        final task = taskDoc.data!;
        logger.info('Task found: ${task.title}');
        return task;
      } else {
        logger.info('No task found with ID: $task');
        return null;
      }
    } catch (e) {
      logger.error('Error fetching task: $e');
      rethrow;
    }
  }

  /// Get all tasks for a home
  TaskQuery getTasksQuery({
    required HomeDocumentReference home,
    TaskFilters? filters,
    TaskSort? sort,
  }) {
    try {
      logger.info('Getting tasks query for home: $home');

      var tasksQuery = home.tasks.whereTitle(isNull: false);

      // return tasksQuery;

      if (filters?.status != null) {
        tasksQuery = tasksQuery.whereStatus(isEqualTo: filters!.status);
      }
      if (filters?.assignedTo != null) {
        tasksQuery = tasksQuery.whereAssignedTo(
          arrayContains: filters!.assignedTo!.reference,
        );
      }
      if (filters?.priority != null) {
        tasksQuery = tasksQuery.wherePriority(isEqualTo: filters!.priority);
      }
      if (filters?.type != null) {
        tasksQuery = tasksQuery.whereType(isEqualTo: filters!.type);
      }

      if (sort?.sortBy != null) {
        tasksQuery = switch (sort!.sortBy) {
          TaskSortBy.createdAt => tasksQuery.orderByCreatedAt(
            descending: sort.sortOrder == SortOrder.descending,
          ),
          TaskSortBy.dueDate => tasksQuery.orderByDueDate(
            descending: sort.sortOrder == SortOrder.descending,
          ),
          TaskSortBy.priority => tasksQuery.orderByPriority(
            descending: sort.sortOrder == SortOrder.descending,
          ),
          TaskSortBy.title => tasksQuery.orderByTitle(
            descending: sort.sortOrder == SortOrder.descending,
          ),
          TaskSortBy.assignedTo => tasksQuery.orderByAssignedTo(
            descending: sort.sortOrder == SortOrder.descending,
          ),
          TaskSortBy.status => tasksQuery.orderByStatus(
            descending: sort.sortOrder == SortOrder.descending,
          ),
        };
      } else {
        // tasksQuery = tasksQuery.orderByCreatedAt(descending: true);
      }

      return tasksQuery;
    } catch (e) {
      logger.error('Error getting tasks stream: $e');
      rethrow;
    }
  }

  /// Get task completion statistics
  Future<Map<String, int>> getTaskStats({
    required String homeId,
    UserDocumentReference? assignedTo,
  }) async {
    try {
      logger.info('Getting task stats for home: $homeId');

      final snapshot = await homesRef.doc(homeId).tasks.get();
      var tasks = snapshot.docs.map((doc) => doc.data).toList();

      if (assignedTo != null) {
        tasks = tasks
            .where((task) => task.assignedTo.contains(assignedTo.reference))
            .toList();
      }

      final stats = <String, int>{
        'total': tasks.length,
        'todo': tasks.where((t) => t.status == TaskStatus.todo).length,
        'doing': tasks.where((t) => t.status == TaskStatus.doing).length,
        'done': tasks.where((t) => t.status == TaskStatus.done).length,
        'overdue': tasks
            .where(
              (t) =>
                  t.dueDate != null &&
                  t.dueDate!.isBefore(DateTime.now()) &&
                  t.status != TaskStatus.done,
            )
            .length,
      };

      logger.info('Task stats calculated: $stats');
      return stats;
    } catch (e) {
      logger.error('Error getting task stats: $e');
      rethrow;
    }
  }
}
