import 'package:auto_route/auto_route.dart';
import 'package:familio/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:familio/blocs/tasks/tasks_bloc.dart';
import 'package:familio/blocs/tasks/tasks_event.dart';
import 'package:familio/blocs/tasks/tasks_state.dart';
import 'package:familio/blocs/home/home_bloc.dart';
import 'package:familio/blocs/home/home_state.dart';
import 'package:familio/data/models/models.dart';
import 'package:familio/widgets/tasks/task_list_item.dart';
import 'package:familio/widgets/tasks/task_filters_bottom_sheet.dart';
import 'package:familio/widgets/tasks/task_sort_bottom_sheet.dart';
import 'package:familio/router/app_router.gr.dart';
import 'package:familio/di/injection.dart';
import 'package:familio/core/utils/context_ext.dart';

@RoutePage()
class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final TasksBloc _tasksBloc = getIt<TasksBloc>();
  final HomeBloc _homeBloc = getIt<HomeBloc>();

  void _loadTasks() {
    final homeState = _homeBloc.state;
    if (homeState.selectedHome != null) {
      _tasksBloc.add(LoadTasks(home: homeState.selectedHome!));
    }
  }

  @override
  Widget build(BuildContext context) {
    _loadTasks();
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, homeState) {
        // When a home is selected, load tasks for that home
        logger.info('Selected home: ${homeState.selectedHome}');
        _loadTasks();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.s.tasks_title),
          actions: [
            IconButton(
              icon: PhosphorIcon(PhosphorIconsDuotone.funnel),
              onPressed: () => _showFiltersBottomSheet(context),
              tooltip: context.s.tasks_filters_tooltip,
            ),
            IconButton(
              icon: PhosphorIcon(PhosphorIconsDuotone.sortAscending),
              onPressed: () => _showSortBottomSheet(context),
              tooltip: context.s.tasks_sort_tooltip,
            ),
          ],
        ),
        body: BlocBuilder<TasksBloc, TasksState>(
          builder: (context, state) {
            return switch (state.uiStatus) {
              TasksUiStatus.initial ||
              TasksUiStatus.loading ||
              TasksUiStatus.deleting => const Center(
                child: CircularProgressIndicator(),
              ),
              TasksUiStatus.error => buildError(context, state),
              TasksUiStatus.loaded => buildContent(context, state),
            };
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _showCreateTaskDialog(context),
          child: PhosphorIcon(PhosphorIconsDuotone.plusCircle),
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PhosphorIcon(
            PhosphorIconsDuotone.listChecks,
            size: 64,
            color: Theme.of(
              context,
            ).colorScheme.onSurface.withValues(alpha: 0.3),
          ),
          const SizedBox(height: 16),
          Text(
            context.s.tasks_empty_title,
            style: context.textTheme.headlineSmall?.copyWith(
              color: context.colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            context.s.tasks_empty_subtitle,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () => _showCreateTaskDialog(context),
            icon: PhosphorIcon(PhosphorIconsDuotone.plusCircle),
            label: Text(context.s.tasks_create_button),
          ),
        ],
      ),
    );
  }

  Widget buildContent(BuildContext context, TasksState state) {
    return Column(
      children: [
        // Task stats card
        // TaskStatsCard(stats: state.taskStats),

        // Task list
        Expanded(
          child: state.tasks.isEmpty
              ? _buildEmptyState(context)
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: state.tasks.length,
                  itemBuilder: (context, index) {
                    final task = state.tasks[index];
                    return TaskListItem(
                      task: task,
                      onStatusChanged: (status) => _tasksBloc.add(
                        UpdateTaskStatus(
                          task: task,
                          status: status,
                        ),
                      ),
                      onSubTaskToggled: (subTaskIndex) => _tasksBloc.add(
                        ToggleSubTask(
                          task: task,
                          subTaskIndex: subTaskIndex,
                        ),
                      ),
                      onTap: () => _showTaskDetails(context, task),
                    );
                  },
                ),
        ),
      ],
    );
  }

  Widget buildError(BuildContext context, TasksState state) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PhosphorIcon(
            PhosphorIconsDuotone.warning,
            size: 64,
            color: context.colorScheme.error,
          ),
          const SizedBox(height: 16),
          Text(
            context.s.tasks_error_loading,
            style: context.textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(state.error ?? context.s.tasks_error_unexpected),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => state.home != null
                ? _tasksBloc.add(LoadTasks(home: state.home!))
                : null,
            child: Text(context.s.tasks_retry_button),
          ),
        ],
      ),
    );
  }

  void _showFiltersBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => TaskFiltersBottomSheet(
        currentFilters: _tasksBloc.state.filters,
        onApply: (filters) => _tasksBloc.add(
          ApplyFilters(
            status: filters.status,
            assignedToUserId: filters.assignedToUserId,
            priority: filters.priority,
            type: filters.type,
            showMyTasksOnly: filters.showMyTasksOnly,
          ),
        ),
      ),
    );
  }

  void _showSortBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const TaskSortBottomSheet(),
    );
  }

  void _showCreateTaskDialog(BuildContext context) {
    final homeState = _homeBloc.state;
    if (homeState.selectedHome != null) {
      context.router.push(
        TaskFormRoute(home: homeState.selectedHome!),
      );
    }
  }

  void _showTaskDetails(BuildContext context, Task task) {
    final homeState = _homeBloc.state;
    if (homeState.selectedHome != null) {
      context.router.push(
        TaskFormRoute(home: homeState.selectedHome!, existingTask: task),
      );
    }
  }
}
