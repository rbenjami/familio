import 'package:familio/blocs/tasks/tasks_state.dart';
import 'package:flutter/material.dart';

import 'package:familio/data/models/models.dart';
import 'package:familio/core/utils/context_ext.dart';

class TaskFiltersBottomSheet extends StatefulWidget {
  final TaskFilters? currentFilters;
  final Function(TaskFilters) onApply;

  const TaskFiltersBottomSheet({
    super.key,
    this.currentFilters,
    required this.onApply,
  });

  @override
  State<TaskFiltersBottomSheet> createState() => _TaskFiltersBottomSheetState();
}

class _TaskFiltersBottomSheetState extends State<TaskFiltersBottomSheet> {
  TaskStatus? selectedStatus;
  Priority? selectedPriority;
  TaskType? selectedType;
  bool showMyTasksOnly = false;

  @override
  void initState() {
    super.initState();
    if (widget.currentFilters != null) {
      selectedStatus = widget.currentFilters!.status;
      selectedPriority = widget.currentFilters!.priority;
      selectedType = widget.currentFilters!.type;
      showMyTasksOnly = widget.currentFilters!.showMyTasksOnly;
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Text(
                context.s.filters_title,
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: _clearFilters,
                child: Text(context.s.filters_clear_all),
              ),
            ],
          ),

          const SizedBox(height: 24),

          // Status filter
          _buildFilterSection(
            title: context.s.filters_status_title,
            child: Wrap(
              spacing: 8,
              children: [
                _buildFilterChip(
                  context.s.filters_status_all,
                  selectedStatus == null,
                  () => setState(() => selectedStatus = null),
                ),
                ...TaskStatus.values.map((status) {
                  return _buildFilterChip(
                    _getStatusLabel(status, context),
                    selectedStatus == status,
                    () => setState(() => selectedStatus = status),
                  );
                }),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Priority filter
          _buildFilterSection(
            title: context.s.filters_priority_title,
            child: Wrap(
              spacing: 8,
              children: [
                _buildFilterChip(
                  context.s.filters_priority_all,
                  selectedPriority == null,
                  () => setState(() => selectedPriority = null),
                ),
                ...Priority.values.map((priority) {
                  return _buildFilterChip(
                    _getPriorityLabel(priority, context),
                    selectedPriority == priority,
                    () => setState(() => selectedPriority = priority),
                  );
                }),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Type filter
          _buildFilterSection(
            title: context.s.filters_type_title,
            child: Wrap(
              spacing: 8,
              children: [
                _buildFilterChip(
                  context.s.filters_type_all,
                  selectedType == null,
                  () => setState(() => selectedType = null),
                ),
                ...TaskType.values.map((type) {
                  return _buildFilterChip(
                    _getTypeLabel(type, context),
                    selectedType == type,
                    () => setState(() => selectedType = type),
                  );
                }),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // My tasks only
          CheckboxListTile(
            title: Text(context.s.filters_my_tasks_only),
            value: showMyTasksOnly,
            onChanged: (value) =>
                setState(() => showMyTasksOnly = value ?? false),
            contentPadding: EdgeInsets.zero,
          ),

          const SizedBox(height: 32),

          // Apply button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _applyFilters,
              child: Text(context.s.filters_apply_button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterSection({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: context.textTheme.titleSmall),
        const SizedBox(height: 8),
        child,
      ],
    );
  }

  Widget _buildFilterChip(String label, bool isSelected, VoidCallback onTap) {
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (_) => onTap(),
      showCheckmark: false,
    );
  }

  void _clearFilters() {
    setState(() {
      selectedStatus = null;
      selectedPriority = null;
      selectedType = null;
      showMyTasksOnly = false;
    });
  }

  void _applyFilters() {
    widget.onApply(
      TaskFilters(
        status: selectedStatus,
        priority: selectedPriority,
        type: selectedType,
        showMyTasksOnly: showMyTasksOnly,
      ),
    );

    Navigator.pop(context);
  }

  String _getStatusLabel(TaskStatus status, BuildContext context) {
    switch (status) {
      case TaskStatus.todo:
        return context.s.task_status_todo;
      case TaskStatus.doing:
        return context.s.task_status_doing;
      case TaskStatus.done:
        return context.s.task_status_done;
    }
  }

  String _getPriorityLabel(Priority priority, BuildContext context) {
    switch (priority) {
      case Priority.low:
        return context.s.task_priority_low;
      case Priority.medium:
        return context.s.task_priority_medium;
      case Priority.high:
        return context.s.task_priority_high;
    }
  }

  String _getTypeLabel(TaskType type, BuildContext context) {
    switch (type) {
      case TaskType.simple:
        return context.s.filters_type_simple;
      case TaskType.checklist:
        return context.s.filters_type_checklist;
      case TaskType.scheduled:
        return context.s.filters_type_scheduled;
    }
  }
}
