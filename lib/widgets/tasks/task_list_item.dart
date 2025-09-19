import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:familio/data/models/models.dart';
import 'package:familio/core/utils/context_ext.dart';

class TaskListItem extends StatelessWidget {
  final Task task;
  final Function(TaskStatus) onStatusChanged;
  final Function(int) onSubTaskToggled;
  final VoidCallback onTap;

  const TaskListItem({
    super.key,
    required this.task,
    required this.onStatusChanged,
    required this.onSubTaskToggled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with title, status, and priority
              Row(
                children: [
                  Expanded(
                    child: Text(
                      task.title,
                      style: context.textTheme.titleMedium?.copyWith(
                        decoration: task.status == TaskStatus.done.name
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  _buildPriorityIndicator(context),
                  const SizedBox(width: 8),
                  _buildStatusChip(context),
                ],
              ),

              // Description if available
              if (task.description != null && task.description!.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(
                  task.description!,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],

              // Task type indicator and metadata
              const SizedBox(height: 12),
              Row(
                children: [
                  _buildTaskTypeIcon(context),
                  const SizedBox(width: 8),
                  Text(
                    _getTaskTypeLabel(context),
                    style: context.textTheme.labelSmall,
                  ),
                  const Spacer(),
                  if (task.dueDate != null) ...[
                    PhosphorIcon(
                      PhosphorIconsDuotone.calendar,
                      size: 16,
                      color: _getDueDateColor(context),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      _formatDueDate(context),
                      style: context.textTheme.labelSmall?.copyWith(
                        color: _getDueDateColor(context),
                      ),
                    ),
                  ],
                ],
              ),

              // TODO: Add subtasks support when needed
              // TODO: Add assigned users support when needed
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPriorityIndicator(BuildContext context) {
    final color = _getPriorityColor(context);
    return Container(
      width: 4,
      height: 24,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }

  Widget _buildStatusChip(BuildContext context) {
    return GestureDetector(
      onTap: () => _showStatusMenu(context),
      child: Chip(
        label: Text(
          _getStatusLabel(context),
          style: context.textTheme.labelSmall?.copyWith(
            color: _getStatusColor(context),
          ),
        ),
        backgroundColor: _getStatusColor(context).withValues(alpha: 0.1),
        side: BorderSide(
          color: _getStatusColor(context).withValues(alpha: 0.3),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }

  Widget _buildTaskTypeIcon(BuildContext context) {
    PhosphorIconData icon;
    switch (task.taskType) {
      case 'simple':
        icon = PhosphorIconsDuotone.note;
        break;
      case 'checklist':
        icon = PhosphorIconsDuotone.listChecks;
        break;
      case 'scheduled':
        icon = PhosphorIconsDuotone.clock;
        break;
      default:
        icon = PhosphorIconsDuotone.note;
        break;
    }

    return PhosphorIcon(icon, size: 16, color: context.colorScheme.primary);
  }


  void _showStatusMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: TaskStatus.values.map((status) {
          return ListTile(
            leading: PhosphorIcon(_getStatusIcon(status)),
            title: Text(_getStatusLabelForStatus(context, status)),
            trailing: task.status == status.name
                ? PhosphorIcon(PhosphorIconsDuotone.check)
                : null,
            onTap: () {
              Navigator.pop(context);
              onStatusChanged(status);
            },
          );
        }).toList(),
      ),
    );
  }

  String _getTaskTypeLabel(BuildContext context) {
    switch (task.taskType) {
      case 'simple':
        return context.s.task_type_simple;
      case 'checklist':
        return context.s.task_type_checklist;
      case 'scheduled':
        return context.s.task_type_scheduled;
      default:
        return context.s.task_type_simple;
    }
  }

  String _getStatusLabel(BuildContext context) {
    switch (task.status) {
      case 'todo':
        return context.s.task_status_todo;
      case 'doing':
        return context.s.task_status_doing;
      case 'done':
        return context.s.task_status_done;
      default:
        return context.s.task_status_todo;
    }
  }

  String _getStatusLabelForStatus(BuildContext context, TaskStatus status) {
    switch (status) {
      case TaskStatus.todo:
        return context.s.task_status_todo;
      case TaskStatus.doing:
        return context.s.task_status_doing;
      case TaskStatus.done:
        return context.s.task_status_done;
    }
  }

  PhosphorIconData _getStatusIcon(TaskStatus status) {
    switch (status) {
      case TaskStatus.todo:
        return PhosphorIconsDuotone.circle;
      case TaskStatus.doing:
        return PhosphorIconsDuotone.clockCounterClockwise;
      case TaskStatus.done:
        return PhosphorIconsDuotone.checkCircle;
    }
  }

  Color _getStatusColor(BuildContext context) {
    switch (task.status) {
      case 'todo':
        return context.colorScheme.outline;
      case 'doing':
        return Colors.orange;
      case 'done':
        return Colors.green;
      default:
        return context.colorScheme.outline;
    }
  }

  Color _getPriorityColor(BuildContext context) {
    switch (task.priority) {
      case 'low':
        return Colors.blue;
      case 'medium':
        return Colors.orange;
      case 'high':
        return Colors.red;
      default:
        return Colors.orange;
    }
  }

  Color _getDueDateColor(BuildContext context) {
    if (task.dueDate == null) return context.colorScheme.onSurface;

    final now = DateTime.now();
    final isOverdue =
        task.dueDate!.isBefore(now) && task.status != 'done';
    final isDueSoon = task.dueDate!.difference(now).inDays <= 1;

    if (isOverdue) return Colors.red;
    if (isDueSoon) return Colors.orange;
    return context.colorScheme.onSurface.withValues(alpha: 0.6);
  }

  String _formatDueDate(BuildContext context) {
    if (task.dueDate == null) return '';

    final now = DateTime.now();
    final dueDate = task.dueDate!;
    final difference = dueDate.difference(now).inDays;

    if (difference == 0) return context.s.task_due_today;
    if (difference == 1) return context.s.task_due_tomorrow;
    if (difference == -1) return context.s.task_due_yesterday;
    if (difference < 0) return context.s.task_due_overdue_days(-difference);

    return context.s.task_due_in_days(difference);
  }
}
