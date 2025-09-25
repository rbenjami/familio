import 'package:familio/widgets/tasks/task_status_chip.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:familio/brick/models/models.dart';
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
                        decoration: task.status == TaskStatus.completed
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  _buildPriorityIndicator(context),
                  const SizedBox(width: 8),
                  TaskStatusChip(
                    status: task.status,
                    onStatusChanged: onStatusChanged,
                  ),
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
                  // _buildTaskTypeIcon(context),
                  // const SizedBox(width: 8),
                  // Text(
                  //   _getTaskTypeLabel(context),
                  //   style: context.textTheme.labelSmall,
                  // ),
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

  Color _getPriorityColor(BuildContext context) {
    return switch (task.priority) {
      Priority.low => Colors.blue,
      Priority.medium => Colors.yellow,
      Priority.high => Colors.orange,
      Priority.urgent => Colors.red,
    };
  }

  Color _getDueDateColor(BuildContext context) {
    if (task.dueDate == null) return context.colorScheme.onSurface;

    final now = DateTime.now();
    final isOverdue =
        task.dueDate!.isBefore(now) && task.status != TaskStatus.completed;
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
