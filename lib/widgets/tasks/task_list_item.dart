import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:familio/data/models/models.dart';

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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        decoration: task.status == TaskStatus.done
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
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
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
                    _getTaskTypeLabel(),
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const Spacer(),
                  if (task.dueDate != null) ...[
                    PhosphorIcon(
                      PhosphorIcons.calendar(),
                      size: 16,
                      color: _getDueDateColor(context),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      _formatDueDate(),
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: _getDueDateColor(context),
                      ),
                    ),
                  ],
                ],
              ),

              // Subtasks progress for checklist type
              if (task.type == TaskType.checklist && task.subTasks.isNotEmpty) ...[
                const SizedBox(height: 12),
                _buildSubTasksProgress(context),
              ],

              // Assigned users
              if (task.assignedToIds.isNotEmpty) ...[
                const SizedBox(height: 12),
                Row(
                  children: [
                    PhosphorIcon(
                      PhosphorIcons.user(),
                      size: 16,
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '${task.assignedToIds.length} assigné(s)',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ],
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
          _getStatusLabel(),
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: _getStatusColor(context),
          ),
        ),
        backgroundColor: _getStatusColor(context).withOpacity(0.1),
        side: BorderSide(color: _getStatusColor(context).withOpacity(0.3)),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }

  Widget _buildTaskTypeIcon(BuildContext context) {
    PhosphorIconData icon;
    switch (task.type) {
      case TaskType.simple:
        icon = PhosphorIcons.note();
        break;
      case TaskType.checklist:
        icon = PhosphorIcons.listChecks();
        break;
      case TaskType.scheduled:
        icon = PhosphorIcons.clock();
        break;
    }

    return PhosphorIcon(
      icon,
      size: 16,
      color: Theme.of(context).colorScheme.primary,
    );
  }

  Widget _buildSubTasksProgress(BuildContext context) {
    final completedCount = task.subTasks.where((st) => st.isCompleted).length;
    final totalCount = task.subTasks.length;
    final progress = totalCount > 0 ? completedCount / totalCount : 0.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              '$completedCount/$totalCount sous-tâches',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const Spacer(),
            Text(
              '${(progress * 100).round()}%',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          value: progress,
          backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
          valueColor: AlwaysStoppedAnimation<Color>(
            Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }

  void _showStatusMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: TaskStatus.values.map((status) {
          return ListTile(
            leading: PhosphorIcon(_getStatusIcon(status)),
            title: Text(_getStatusLabelForStatus(status)),
            trailing: task.status == status
                ? PhosphorIcon(PhosphorIcons.check())
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

  String _getTaskTypeLabel() {
    switch (task.type) {
      case TaskType.simple:
        return 'Tâche simple';
      case TaskType.checklist:
        return 'Liste de contrôle';
      case TaskType.scheduled:
        return 'Tâche programmée';
    }
  }

  String _getStatusLabel() {
    return _getStatusLabelForStatus(task.status);
  }

  String _getStatusLabelForStatus(TaskStatus status) {
    switch (status) {
      case TaskStatus.todo:
        return 'À faire';
      case TaskStatus.doing:
        return 'En cours';
      case TaskStatus.done:
        return 'Terminé';
    }
  }

  PhosphorIconData _getStatusIcon(TaskStatus status) {
    switch (status) {
      case TaskStatus.todo:
        return PhosphorIcons.circle();
      case TaskStatus.doing:
        return PhosphorIcons.clockCounterClockwise();
      case TaskStatus.done:
        return PhosphorIcons.checkCircle();
    }
  }

  Color _getStatusColor(BuildContext context) {
    switch (task.status) {
      case TaskStatus.todo:
        return Theme.of(context).colorScheme.outline;
      case TaskStatus.doing:
        return Colors.orange;
      case TaskStatus.done:
        return Colors.green;
    }
  }

  Color _getPriorityColor(BuildContext context) {
    switch (task.priority) {
      case Priority.low:
        return Colors.blue;
      case Priority.medium:
        return Colors.orange;
      case Priority.high:
        return Colors.red;
    }
  }

  Color _getDueDateColor(BuildContext context) {
    if (task.dueDate == null) return Theme.of(context).colorScheme.onSurface;
    
    final now = DateTime.now();
    final isOverdue = task.dueDate!.isBefore(now) && task.status != TaskStatus.done;
    final isDueSoon = task.dueDate!.difference(now).inDays <= 1;

    if (isOverdue) return Colors.red;
    if (isDueSoon) return Colors.orange;
    return Theme.of(context).colorScheme.onSurface.withOpacity(0.6);
  }

  String _formatDueDate() {
    if (task.dueDate == null) return '';
    
    final now = DateTime.now();
    final dueDate = task.dueDate!;
    final difference = dueDate.difference(now).inDays;

    if (difference == 0) return 'Aujourd\'hui';
    if (difference == 1) return 'Demain';
    if (difference == -1) return 'Hier';
    if (difference < 0) return 'En retard de ${-difference} jour(s)';
    
    return 'Dans $difference jour(s)';
  }
}