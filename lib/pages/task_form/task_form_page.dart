import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:familio/blocs/task/task_bloc.dart';
import 'package:familio/blocs/task/task_event.dart';
import 'package:familio/blocs/task/task_state.dart';
import 'package:familio/data/models/models.dart';
import 'package:familio/widgets/task_form/simple_text_field.dart';
import 'package:familio/widgets/task_form/priority_dots.dart';
import 'package:familio/widgets/task_form/member_chips.dart';
import 'package:familio/widgets/task_form/subtask_input.dart';
import 'package:familio/core/utils/context_ext.dart';
import 'package:familio/di/injection.dart';

@RoutePage()
class TaskFormPage extends StatefulWidget {
  final HomeDocumentReference home;
  final TaskQueryDocumentSnapshot? existingTask;

  const TaskFormPage({super.key, required this.home, this.existingTask});

  @override
  State<TaskFormPage> createState() => _TaskFormPageState();
}

class _TaskFormPageState extends State<TaskFormPage> {
  late final TaskBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = getIt<TaskBloc>(param1: widget.home, param2: widget.existingTask)
      ..add(TaskInitialized());
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<TaskBloc, TaskState>(
            builder: (context, state) {
              if (state.uiStatus == TaskUiStatus.loading &&
                  state.task == null) {
                return const Center(child: CircularProgressIndicator());
              }

              return _buildForm(context, state);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context, TaskState state) {
    final existingTask = widget.existingTask?.data;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Close button
          Row(
            children: [
              IconButton(
                onPressed: () => context.router.pop(),
                icon: PhosphorIcon(PhosphorIconsDuotone.xCircle),
                visualDensity: VisualDensity.compact,
              ),
              const Spacer(),
              if (state.uiStatus == TaskUiStatus.loading)
                const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              else
                IconButton(
                  onPressed: () => _bloc.add(TaskSubmitted()),
                  icon: PhosphorIcon(
                    PhosphorIconsDuotone.checkCircle,
                    color: state.hasUnsavedChanges
                        ? context.colorScheme.primary
                        : context.colorScheme.secondary,
                  ),
                  visualDensity: VisualDensity.compact,
                ),
            ],
          ),

          const SizedBox(height: 8),

          // Title input
          SimpleTextField(
            hint: context.s.task_title_hint,
            initialValue: existingTask?.title,
            onChanged: (value) => _bloc.add(TaskTitleChanged(value)),
            isRequired: true,
            hasError:
                state.uiStatus == TaskUiStatus.error &&
                state.title.trim().isEmpty,
            textInputAction: TextInputAction.next,
          ),

          const SizedBox(height: 16),

          // Description input
          SimpleTextField(
            hint: context.s.task_description_hint,
            initialValue: existingTask?.description,
            onChanged: (value) => _bloc.add(TaskDescriptionChanged(value)),
            isMultiline: true,
          ),

          const SizedBox(height: 24),

          // Member assignment
          if (state.availableMembers.isNotEmpty) ...[
            MemberChips(
              availableMembers: state.availableMembers,
              selectedMembers: state.assignedTo,
              onMemberToggled: (userId) =>
                  _bloc.add(TaskAssigneeToggled(userId)),
            ),
            const SizedBox(height: 24),
          ],

          // Due date and priority row
          Row(
            children: [
              // Due date
              Expanded(
                child: InkWell(
                  onTap: () => _showDatePicker(context, state),
                  borderRadius: BorderRadius.circular(8),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        PhosphorIcon(
                          PhosphorIconsDuotone.calendar,
                          size: 20,
                          color: state.dueDate != null
                              ? context.colorScheme.primary
                              : context.colorScheme.onSurface.withValues(
                                  alpha: 0.6,
                                ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          state.dueDate != null
                              ? _formatDate(state.dueDate!)
                              : context.s.task_due_date_hint,
                          style: context.textTheme.bodyLarge?.copyWith(
                            color: state.dueDate != null
                                ? context.colorScheme.onSurface
                                : context.colorScheme.onSurface.withValues(
                                    alpha: 0.6,
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 16),

              // Priority
              Row(
                children: [
                  Text(
                    context.s.task_priority_hint,
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: context.colorScheme.onSurface.withValues(
                        alpha: 0.6,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  PriorityDots(
                    selectedPriority: state.priority,
                    onPriorityChanged: (priority) =>
                        _bloc.add(TaskPriorityChanged(priority)),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 32),

          // Subtasks
          SubTaskInput(
            subTasks: state.subTasks,
            onSubTaskAdded: (title) => _bloc.add(SubTaskAdded(title)),
            onSubTaskRemoved: (index) => _bloc.add(SubTaskRemoved(index)),
            onSubTaskTitleChanged: (index, title) =>
                _bloc.add(SubTaskTitleChanged(index, title)),
          ),

          // Bottom padding for safe area
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Future<void> _showDatePicker(BuildContext context, TaskState state) async {
    final now = DateTime.now();
    final initialDate = state.dueDate ?? now;
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: initialDate.isBefore(now) ? initialDate : now,
      lastDate: initialDate.add(const Duration(days: 365)),
    );

    if (picked != null) {
      _bloc.add(TaskDueDateChanged(picked));
    }
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final tomorrow = now.add(const Duration(days: 1));
    final yesterday = now.subtract(const Duration(days: 1));

    if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day) {
      return context.s.task_due_today;
    } else if (date.year == tomorrow.year &&
        date.month == tomorrow.month &&
        date.day == tomorrow.day) {
      return context.s.task_due_tomorrow;
    } else if (date.year == yesterday.year &&
        date.month == yesterday.month &&
        date.day == yesterday.day) {
      return context.s.task_due_yesterday;
    } else {
      return '${date.day}/${date.month}/${date.year}';
    }
  }
}
