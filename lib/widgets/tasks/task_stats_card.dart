import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:familio/core/utils/context_ext.dart';

class TaskStatsCard extends StatelessWidget {
  final Map<String, int> stats;

  const TaskStatsCard({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    if (stats.isEmpty) return const SizedBox.shrink();

    final total = stats['total'] ?? 0;
    final todo = stats['todo'] ?? 0;
    final doing = stats['doing'] ?? 0;
    final done = stats['done'] ?? 0;
    final overdue = stats['overdue'] ?? 0;

    return Container(
      margin: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  PhosphorIcon(
                    PhosphorIconsDuotone.chartBar,
                    size: 20,
                    color: context.colorScheme.primary,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    context.s.task_stats_title,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _buildStatItem(
                      context,
                      icon: PhosphorIconsDuotone.listBullets,
                      label: context.s.task_stats_total,
                      value: total,
                      color: context.colorScheme.primary,
                    ),
                  ),
                  Expanded(
                    child: _buildStatItem(
                      context,
                      icon: PhosphorIconsDuotone.circle,
                      label: context.s.task_stats_todo,
                      value: todo,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: _buildStatItem(
                      context,
                      icon: PhosphorIconsDuotone.clockCounterClockwise,
                      label: context.s.task_stats_doing,
                      value: doing,
                      color: Colors.orange,
                    ),
                  ),
                  Expanded(
                    child: _buildStatItem(
                      context,
                      icon: PhosphorIconsDuotone.checkCircle,
                      label: context.s.task_stats_done,
                      value: done,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              if (overdue > 0) ...[
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.red.withValues(alpha: 0.3),
                    ),
                  ),
                  child: Row(
                    children: [
                      PhosphorIcon(
                        PhosphorIconsDuotone.warning,
                        size: 16,
                        color: Colors.red,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        context.s.task_stats_overdue(overdue),
                        style: context.textTheme.labelMedium
                            ?.copyWith(
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(
    BuildContext context, {
    required PhosphorIconData icon,
    required String label,
    required int value,
    required Color color,
  }) {
    return Column(
      children: [
        PhosphorIcon(icon, size: 24, color: color),
        const SizedBox(height: 4),
        Text(
          value.toString(),
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: context.textTheme.labelSmall?.copyWith(
            color: context.colorScheme.onSurface.withValues(alpha: 0.6),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
