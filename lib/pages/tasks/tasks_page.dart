import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:familio/blocs/task/task_bloc.dart';
import 'package:familio/blocs/task/task_event.dart';
import 'package:familio/blocs/task/task_state.dart';
import 'package:familio/data/models/models.dart';
import 'package:familio/widgets/tasks/task_list_item.dart';
import 'package:familio/widgets/tasks/task_filters_bottom_sheet.dart';
import 'package:familio/widgets/tasks/task_stats_card.dart';
import 'package:familio/di/injection.dart';

@RoutePage()
class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  late final TaskBloc _taskBloc;

  @override
  void initState() {
    super.initState();
    _taskBloc = getIt<TaskBloc>();
    // TODO: Get homeId from current user/context
    _taskBloc.add(const LoadTasks(homeId: 'demo-home-id'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tâches'),
        actions: [
          IconButton(
            icon: PhosphorIcon(PhosphorIcons.funnel()),
            onPressed: () => _showFiltersBottomSheet(context),
          ),
          IconButton(
            icon: PhosphorIcon(PhosphorIcons.plus()),
            onPressed: () => _showCreateTaskDialog(context),
          ),
        ],
      ),
      body: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          switch (state.uiStatus) {
            case TaskUiStatus.initial:
            case TaskUiStatus.loading:
              return const Center(child: CircularProgressIndicator());

            case TaskUiStatus.error:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PhosphorIcon(
                      PhosphorIconsDuotone.warning,
                      size: 64,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Erreur de chargement',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      state.error ?? 'Une erreur inattendue s\'est produite',
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => _taskBloc.add(RefreshTasks()),
                      child: const Text('Réessayer'),
                    ),
                  ],
                ),
              );

            case TaskUiStatus.loaded:
            case TaskUiStatus.creating:
            case TaskUiStatus.updating:
            case TaskUiStatus.deleting:
              return Column(
                children: [
                  // Task stats card
                  TaskStatsCard(stats: state.taskStats),

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
                                onSubTaskToggled: (subTaskIndex) =>
                                    _taskBloc.add(
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
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showCreateTaskDialog(context),
        child: PhosphorIcon(PhosphorIconsDuotone.plusCircle),
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
            'Aucune tâche',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Theme.of(
                context,
              ).colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Créez votre première tâche pour commencer',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(
                context,
              ).colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () => _showCreateTaskDialog(context),
            icon: PhosphorIcon(PhosphorIconsDuotone.plus),
            label: const Text('Créer une tâche'),
          ),
        ],
      ),
    );
  }

  void _showFiltersBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => BlocProvider.value(
        value: _taskBloc,
        child: const TaskFiltersBottomSheet(),
      ),
    );
  }

  void _showCreateTaskDialog(BuildContext context) {
    // TODO: Implement create task dialog
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Création de tâche à implémenter')),
    );
  }

  void _showTaskDetails(BuildContext context, Task task) {
    // TODO: Implement task details dialog/page
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Détails de la tâche: ${task.title}')),
    );
  }

  @override
  void dispose() {
    _taskBloc.close();
    super.dispose();
  }
}
