import 'package:familio/blocs/tasks/tasks_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:familio/blocs/tasks/tasks_bloc.dart';
import 'package:familio/blocs/tasks/tasks_event.dart';
import 'package:familio/core/utils/context_ext.dart';

class TaskSortBottomSheet extends StatefulWidget {
  const TaskSortBottomSheet({super.key});

  @override
  State<TaskSortBottomSheet> createState() => _TaskSortBottomSheetState();
}

class _TaskSortBottomSheetState extends State<TaskSortBottomSheet> {
  TaskSortBy sortBy = TaskSortBy.createdAt;
  SortOrder sortOrder = SortOrder.descending;

  @override
  void initState() {
    super.initState();
    // Initialize with current sort
    final currentSort = context.read<TasksBloc>().state.sort;

    if (currentSort != null) {
      sortBy = currentSort.sortBy;
      sortOrder = currentSort.sortOrder;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
        bottom: context.mediaQuery.viewInsets.bottom + 16,
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Text(
                  context.s.sort_title,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: _resetSort,
                  child: Text(context.s.sort_default_button),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Sort by
            _buildSortSection(
              title: context.s.sort_by_title,
              child: Wrap(
                spacing: 8,
                children: TaskSortBy.values.map((sort) {
                  return _buildSortChip(
                    _getSortByLabel(sort, context),
                    sortBy == sort,
                    () => setState(() => sortBy = sort),
                  );
                }).toList(),
              ),
            ),

            const SizedBox(height: 24),

            // Sort order
            _buildSortSection(
              title: context.s.sort_order_title,
              child: SegmentedButton<SortOrder>(
                segments: [
                  ButtonSegment(
                    value: SortOrder.ascending,
                    label: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PhosphorIcon(
                          PhosphorIconsDuotone.sortAscending,
                          size: 16,
                        ),
                        const SizedBox(width: 8),
                        Text(context.s.sort_order_ascending),
                      ],
                    ),
                  ),
                  ButtonSegment(
                    value: SortOrder.descending,
                    label: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PhosphorIcon(
                          PhosphorIconsDuotone.sortDescending,
                          size: 16,
                        ),
                        const SizedBox(width: 8),
                        Text(context.s.sort_order_descending),
                      ],
                    ),
                  ),
                ],
                selected: {sortOrder},
                onSelectionChanged: (Set<SortOrder> selection) {
                  setState(() => sortOrder = selection.first);
                },
              ),
            ),

            const SizedBox(height: 32),

            // Apply button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _applySorting,
                child: Text(context.s.sort_apply_button),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSortSection({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        child,
      ],
    );
  }

  Widget _buildSortChip(String label, bool isSelected, VoidCallback onTap) {
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (_) => onTap(),
      showCheckmark: false,
    );
  }

  void _resetSort() {
    setState(() {
      sortBy = TaskSortBy.createdAt;
      sortOrder = SortOrder.descending;
    });
  }

  void _applySorting() {
    context.read<TasksBloc>().add(
      ApplySorting(sortBy: sortBy, sortOrder: sortOrder),
    );

    Navigator.pop(context);
  }

  String _getSortByLabel(TaskSortBy sort, BuildContext context) {
    switch (sort) {
      case TaskSortBy.createdAt:
        return context.s.sort_by_created_date;
      case TaskSortBy.dueDate:
        return context.s.sort_by_due_date;
      case TaskSortBy.priority:
        return context.s.sort_by_priority;
      case TaskSortBy.title:
        return context.s.sort_by_task_title;
      case TaskSortBy.assignedTo:
        return context.s.sort_by_assigned_to;
      case TaskSortBy.status:
        return context.s.sort_by_status;
    }
  }
}
