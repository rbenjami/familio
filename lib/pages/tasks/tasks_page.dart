import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:familio/blocs/task/task_bloc.dart';
import 'package:familio/blocs/task/task_event.dart';
import 'package:familio/blocs/task/task_state.dart';
import 'package:familio/blocs/home/home_bloc.dart';
import 'package:familio/blocs/home/home_state.dart';
import 'package:familio/blocs/home/home_event.dart';
import 'package:familio/blocs/auth/auth_bloc.dart';
import 'package:familio/data/models/models.dart';
import 'package:familio/widgets/tasks/task_list_item.dart';
import 'package:familio/widgets/tasks/task_filters_bottom_sheet.dart';
import 'package:familio/widgets/tasks/task_sort_bottom_sheet.dart';
import 'package:familio/di/injection.dart';
import 'package:familio/core/utils/context_ext.dart';

@RoutePage()
class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final AuthBloc _authBloc = getIt<AuthBloc>();
  final TaskBloc _taskBloc = getIt<TaskBloc>();
  final HomeBloc _homeBloc = getIt<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    // Load user homes if current user is available
    if (_authBloc.state.currentUser != null) {
      _homeBloc.add(LoadUserHomes(user: _authBloc.state.currentUser!));
    }
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, homeState) {
        // When a home is selected, load tasks for that home
        if (homeState.selectedHome != null) {
          _taskBloc.add(LoadTasks(homeId: homeState.selectedHome!.id));
        }
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
        body: BlocBuilder<TaskBloc, TaskState>(
          builder: (context, state) {
            return switch (state.uiStatus) {
              TaskUiStatus.initial || TaskUiStatus.loading => const Center(
                child: CircularProgressIndicator(),
              ),
              TaskUiStatus.error => buildError(context, state),
              TaskUiStatus.loaded ||
              TaskUiStatus.creating ||
              TaskUiStatus.updating ||
              TaskUiStatus.deleting => buildContent(context, state),
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

  Widget buildContent(BuildContext context, TaskState state) {
    return Column(
      children: [
        // Task stats card
        // TaskStatsCard(stats: state.taskStats),

        // Task list
        Expanded(
          child: state.filteredTasks.isEmpty
              ? _buildEmptyState(context)
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: state.filteredTasks.length,
                  itemBuilder: (context, index) {
                    final task = state.filteredTasks[index];
                    return TaskListItem(
                      task: task,
                      onStatusChanged: (status) => _taskBloc.add(
                        UpdateTaskStatus(
                          homeId: task.homeId,
                          taskId: task.id,
                          status: status,
                        ),
                      ),
                      onSubTaskToggled: (subTaskIndex) => _taskBloc.add(
                        ToggleSubTask(
                          homeId: task.homeId,
                          taskId: task.id,
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

  Widget buildError(BuildContext context, TaskState state) {
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
            onPressed: () => _taskBloc.add(RefreshTasks()),
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
      builder: (context) => const TaskFiltersBottomSheet(),
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
    // TODO: Implement create task dialog
    context.showSnackBar(
      SnackBar(content: Text(context.s.tasks_create_placeholder)),
    );
  }

  void _showTaskDetails(BuildContext context, Task task) {
    // TODO: Implement task details dialog/page
    context.showSnackBar(
      SnackBar(content: Text(context.s.tasks_details_placeholder(task.title))),
    );
  }
}
