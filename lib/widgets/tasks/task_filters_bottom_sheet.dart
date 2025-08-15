import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:familio/blocs/task/task_bloc.dart';
import 'package:familio/blocs/task/task_event.dart';
import 'package:familio/data/models/models.dart';

class TaskFiltersBottomSheet extends StatefulWidget {
  const TaskFiltersBottomSheet({super.key});

  @override
  State<TaskFiltersBottomSheet> createState() => _TaskFiltersBottomSheetState();
}

class _TaskFiltersBottomSheetState extends State<TaskFiltersBottomSheet> {
  TaskStatus? selectedStatus;
  Priority? selectedPriority;
  TaskType? selectedType;
  bool showMyTasksOnly = false;
  TaskSortBy sortBy = TaskSortBy.createdAt;
  SortOrder sortOrder = SortOrder.descending;

  @override
  void initState() {
    super.initState();
    // Initialize with current filters
    final currentFilters = context.read<TaskBloc>().state.filters;
    final currentSort = context.read<TaskBloc>().state.sort;
    
    if (currentFilters != null) {
      selectedStatus = currentFilters.status;
      selectedPriority = currentFilters.priority;
      selectedType = currentFilters.type;
      showMyTasksOnly = currentFilters.showMyTasksOnly;
    }
    
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
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Text(
                'Filtres et tri',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: _clearFilters,
                child: const Text('Tout effacer'),
              ),
            ],
          ),
          
          const SizedBox(height: 24),
          
          // Filters section
          Text(
            'Filtres',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          
          const SizedBox(height: 16),
          
          // Status filter
          _buildFilterSection(
            title: 'Statut',
            child: Wrap(
              spacing: 8,
              children: [
                _buildFilterChip(
                  'Tous',
                  selectedStatus == null,
                  () => setState(() => selectedStatus = null),
                ),
                ...TaskStatus.values.map((status) {
                  return _buildFilterChip(
                    _getStatusLabel(status),
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
            title: 'Priorité',
            child: Wrap(
              spacing: 8,
              children: [
                _buildFilterChip(
                  'Toutes',
                  selectedPriority == null,
                  () => setState(() => selectedPriority = null),
                ),
                ...Priority.values.map((priority) {
                  return _buildFilterChip(
                    _getPriorityLabel(priority),
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
            title: 'Type',
            child: Wrap(
              spacing: 8,
              children: [
                _buildFilterChip(
                  'Tous',
                  selectedType == null,
                  () => setState(() => selectedType = null),
                ),
                ...TaskType.values.map((type) {
                  return _buildFilterChip(
                    _getTypeLabel(type),
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
            title: const Text('Mes tâches uniquement'),
            value: showMyTasksOnly,
            onChanged: (value) => setState(() => showMyTasksOnly = value ?? false),
            contentPadding: EdgeInsets.zero,
          ),
          
          const SizedBox(height: 24),
          
          // Sorting section
          Text(
            'Tri',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          
          const SizedBox(height: 16),
          
          // Sort by
          _buildFilterSection(
            title: 'Trier par',
            child: Wrap(
              spacing: 8,
              children: TaskSortBy.values.map((sort) {
                return _buildFilterChip(
                  _getSortByLabel(sort),
                  sortBy == sort,
                  () => setState(() => sortBy = sort),
                );
              }).toList(),
            ),
          ),
          
          const SizedBox(height: 16),
          
          // Sort order
          Row(
            children: [
              Text(
                'Ordre',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: SegmentedButton<SortOrder>(
                  segments: [
                    ButtonSegment(
                      value: SortOrder.ascending,
                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PhosphorIcon(PhosphorIcons.sortAscending(), size: 16),
                          const SizedBox(width: 4),
                          const Text('Croissant'),
                        ],
                      ),
                    ),
                    ButtonSegment(
                      value: SortOrder.descending,
                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PhosphorIcon(PhosphorIcons.sortDescending(), size: 16),
                          const SizedBox(width: 4),
                          const Text('Décroissant'),
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
            ],
          ),
          
          const SizedBox(height: 32),
          
          // Apply button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _applyFilters,
              child: const Text('Appliquer'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterSection({
    required String title,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
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
      sortBy = TaskSortBy.createdAt;
      sortOrder = SortOrder.descending;
    });
  }

  void _applyFilters() {
    context.read<TaskBloc>().add(
      ApplyFilters(
        status: selectedStatus,
        priority: selectedPriority,
        type: selectedType,
        showMyTasksOnly: showMyTasksOnly,
      ),
    );
    
    context.read<TaskBloc>().add(
      ApplySorting(
        sortBy: sortBy,
        sortOrder: sortOrder,
      ),
    );
    
    Navigator.pop(context);
  }

  String _getStatusLabel(TaskStatus status) {
    switch (status) {
      case TaskStatus.todo:
        return 'À faire';
      case TaskStatus.doing:
        return 'En cours';
      case TaskStatus.done:
        return 'Terminé';
    }
  }

  String _getPriorityLabel(Priority priority) {
    switch (priority) {
      case Priority.low:
        return 'Faible';
      case Priority.medium:
        return 'Moyenne';
      case Priority.high:
        return 'Élevée';
    }
  }

  String _getTypeLabel(TaskType type) {
    switch (type) {
      case TaskType.simple:
        return 'Simple';
      case TaskType.checklist:
        return 'Liste';
      case TaskType.scheduled:
        return 'Programmée';
    }
  }

  String _getSortByLabel(TaskSortBy sort) {
    switch (sort) {
      case TaskSortBy.createdAt:
        return 'Date de création';
      case TaskSortBy.dueDate:
        return 'Échéance';
      case TaskSortBy.priority:
        return 'Priorité';
      case TaskSortBy.title:
        return 'Titre';
      case TaskSortBy.assignedTo:
        return 'Assigné à';
      case TaskSortBy.status:
        return 'Statut';
    }
  }
}