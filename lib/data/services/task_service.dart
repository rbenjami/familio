import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talker/talker.dart';

import '../models/models.dart';

@singleton
class TaskService {
  final SupabaseClient _client;
  final Talker _talker;

  TaskService(this._client, this._talker);

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
      _talker.info('Creating task: $title in home: $homeId');

      final response = await _client
          .from('tasks')
          .insert({
            'home_id': homeId,
            'title': title,
            'description': description,
            'created_by_id': _client.auth.currentUser!.id,
            'status': TaskStatus.pending.name,
            'due_date': dueDate?.toIso8601String(),
            'priority': priority.name,
            'start_date': startDate?.toIso8601String(),
            'estimated_duration_minutes': estimatedDurationMinutes,
            'location': location,
            'tags': tags ?? [],
          })
          .select()
          .single();

      final task = Task.fromJson(response);

      for (final userId in assignedToUserIds) {
        await _client.from('task_assignees').insert({
          'task_id': task.id,
          'user_id': userId,
        });
      }

      _talker.info('Task created successfully: ${task.id}');
      return task;
    } catch (e, s) {
      _talker.error('Error creating task: $e', e, s);
      rethrow;
    }
  }

  Future<Task> updateTask({
    required String taskId,
    String? title,
    String? description,
    TaskStatus? status,
    DateTime? dueDate,
    Priority? priority,
    DateTime? startDate,
    int? estimatedDurationMinutes,
    List<String>? tags,
    String? location,
  }) async {
    try {
      _talker.info('Updating task: $taskId');

      final updateData = <String, dynamic>{};
      if (title != null) updateData['title'] = title;
      if (description != null) updateData['description'] = description;
      if (status != null) updateData['status'] = status.toJson();
      if (dueDate != null) updateData['due_date'] = dueDate.toIso8601String();
      if (priority != null) updateData['priority'] = priority.name;
      if (startDate != null) {
        updateData['start_date'] = startDate.toIso8601String();
      }
      if (estimatedDurationMinutes != null) {
        updateData['estimated_duration_minutes'] = estimatedDurationMinutes;
      }
      if (tags != null) updateData['tags'] = tags;
      if (location != null) updateData['location'] = location;

      final response = await _client
          .from('tasks')
          .update(updateData)
          .eq('id', taskId)
          .select()
          .single();

      final task = Task.fromJson(response);
      _talker.info('Task updated successfully: $task');
      return task;
    } catch (e, s) {
      _talker.error('Error updating task: $e', e, s);
      rethrow;
    }
  }

  Future<void> deleteTask(String taskId) async {
    try {
      _talker.info('Deleting task: $taskId');

      await _client.from('tasks').delete().eq('id', taskId);

      _talker.info('Task deleted successfully: $taskId');
    } catch (e, s) {
      _talker.error('Error deleting task: $e', e, s);
      rethrow;
    }
  }

  Future<Task> getTask(String taskId) async {
    try {
      _talker.info('Fetching task: $taskId');

      final response = await _client
          .from('tasks')
          .select()
          .eq('id', taskId)
          .single();

      final task = Task.fromJson(response);
      _talker.info('Task found: ${task.title}');
      return task;
    } catch (e, s) {
      _talker.error('Error fetching task: $e', e, s);
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
      _talker.info('Fetching tasks for home: $homeId');

      var query = _client.from('tasks').select().eq('home_id', homeId);

      if (status != null) {
        query = query.eq('status', status.name);
      }
      if (priority != null) {
        query = query.eq('priority', priority.name);
      }
      if (assignedToUserId != null) {
        query = query.eq('task_assignees.user_id', assignedToUserId);
      }

      final response = await query.order('created_at', ascending: false);

      final tasks = response.map((json) => Task.fromJson(json)).toList();
      _talker.info('Found ${tasks.length} tasks for home: $homeId');
      return tasks;
    } catch (e, s) {
      _talker.error('Error fetching tasks for home: $e', e, s);
      rethrow;
    }
  }

  Future<List<TaskAssignee>> getTaskAssignees(String taskId) async {
    try {
      _talker.info('Fetching assignees for task: $taskId');

      final response = await _client
          .from('task_assignees')
          .select()
          .eq('task_id', taskId);

      final assignees = response
          .map((json) => TaskAssignee.fromJson(json))
          .toList();
      _talker.info('Found ${assignees.length} assignees for task: $taskId');
      return assignees;
    } catch (e, s) {
      _talker.error('Error fetching task assignees: $e', e, s);
      rethrow;
    }
  }

  Future<void> assignUserToTask({
    required String taskId,
    required String userId,
  }) async {
    try {
      _talker.info('Assigning user $userId to task $taskId');

      await _client.from('task_assignees').insert({
        'task_id': taskId,
        'user_id': userId,
      });

      _talker.info('User assigned successfully to task');
    } catch (e, s) {
      _talker.error('Error assigning user to task: $e', e, s);
      rethrow;
    }
  }

  Future<void> unassignUserFromTask({
    required String taskId,
    required String userId,
  }) async {
    try {
      _talker.info('Unassigning user $userId from task $taskId');

      await _client
          .from('task_assignees')
          .delete()
          .eq('task_id', taskId)
          .eq('user_id', userId);

      _talker.info('User unassigned successfully from task');
    } catch (e, s) {
      _talker.error('Error unassigning user from task: $e', e, s);
      rethrow;
    }
  }

  Future<SubTask> createSubTask({
    required String taskId,
    required String title,
    required int orderIndex,
  }) async {
    try {
      _talker.info('Creating subtask: $title for task: $taskId');

      final response = await _client
          .from('sub_tasks')
          .insert({
            'task_id': taskId,
            'title': title,
            'is_completed': false,
            'order_index': orderIndex,
          })
          .select()
          .single();

      final subTask = SubTask.fromJson(response);
      _talker.info('Subtask created successfully: ${subTask.id}');
      return subTask;
    } catch (e, s) {
      _talker.error('Error creating subtask: $e', e, s);
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
      _talker.info('Updating subtask: $subTaskId');

      final updateData = <String, dynamic>{};
      if (title != null) updateData['title'] = title;
      if (isCompleted != null) updateData['is_completed'] = isCompleted;
      if (orderIndex != null) updateData['order_index'] = orderIndex;

      final response = await _client
          .from('sub_tasks')
          .update(updateData)
          .eq('id', subTaskId)
          .select()
          .single();

      final subTask = SubTask.fromJson(response);
      _talker.info('Subtask updated successfully: ${subTask.id}');
      return subTask;
    } catch (e, s) {
      _talker.error('Error updating subtask: $e', e, s);
      rethrow;
    }
  }

  Future<List<SubTask>> getSubTasks(String taskId) async {
    try {
      _talker.info('Fetching subtasks for task: $taskId');

      final response = await _client
          .from('sub_tasks')
          .select()
          .eq('task_id', taskId)
          .order('order_index');

      final subTasks = response.map((json) => SubTask.fromJson(json)).toList();
      _talker.info('Found ${subTasks.length} subtasks for task: $taskId');
      return subTasks;
    } catch (e, s) {
      _talker.error('Error fetching subtasks: $e', e, s);
      rethrow;
    }
  }

  Future<void> deleteSubTask(String subTaskId) async {
    try {
      _talker.info('Deleting subtask: $subTaskId');

      await _client.from('sub_tasks').delete().eq('id', subTaskId);

      _talker.info('Subtask deleted successfully: $subTaskId');
    } catch (e, s) {
      _talker.error('Error deleting subtask: $e', e, s);
      rethrow;
    }
  }

  Future<Map<String, int>> getTaskStats({
    required String homeId,
    String? assignedToUserId,
  }) async {
    try {
      _talker.info('Getting task stats for home: $homeId');

      var query = _client.from('tasks').select().eq('home_id', homeId);

      if (assignedToUserId != null) {
        query = query.eq('task_assignees.user_id', assignedToUserId);
      }

      final response = await query;
      final tasks = response.map((json) => Task.fromJson(json)).toList();

      final now = DateTime.now();
      final stats = <String, int>{
        'total': tasks.length,
        'pending': tasks.where((t) => t.status == 'pending').length,
        'in_progress': tasks.where((t) => t.status == 'in_progress').length,
        'completed': tasks.where((t) => t.status == 'completed').length,
        'overdue': tasks
            .where(
              (t) =>
                  t.dueDate != null &&
                  t.dueDate!.isBefore(now) &&
                  t.status != 'completed',
            )
            .length,
      };

      _talker.info('Task stats calculated: $stats');
      return stats;
    } catch (e, s) {
      _talker.error('Error getting task stats: $e', e, s);
      rethrow;
    }
  }
}
