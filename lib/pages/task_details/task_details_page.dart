import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:familio/blocs/task/task_bloc.dart';
import 'package:familio/blocs/task/task_event.dart';
import 'package:familio/blocs/task/task_state.dart';
import 'package:familio/brick/models/models.dart';
import 'package:familio/widgets/task_form/priority_dots.dart';
import 'package:familio/widgets/task_form/subtask_input.dart';
import 'package:familio/core/utils/context_ext.dart';
import 'package:familio/di/injection.dart';

@RoutePage()
class TaskDetailsPage extends StatefulWidget {
  final Home home;
  final Task? existingTask;

  const TaskDetailsPage({super.key, required this.home, this.existingTask});

  @override
  State<TaskDetailsPage> createState() => _TaskDetailsPageState();
}

class _TaskDetailsPageState extends State<TaskDetailsPage> {
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
    return SingleChildScrollView(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 16),
                _buildHeader(context, state),
                const SizedBox(height: 8),
                _buildTitleField(context, state),
                const SizedBox(height: 8),
                _buildDescriptionField(context, state),
                // TODO: Add member section
                // const SizedBox(height: 8),
                // _buildMemberSection(context, state),
                const SizedBox(height: 8),
                _buildDateAndPriorityRow(context, state),
                const SizedBox(height: 8),
              ],
            ),
          ),
          _buildSubtasksSection(context, state),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, TaskState state) {
    return Row(
      children: [
        IconButton(
          onPressed: () => context.router.pop(),
          icon: PhosphorIcon(PhosphorIconsDuotone.xCircle, size: 32),
          visualDensity: VisualDensity.compact,
        ),
        const Spacer(),

        IconButton(
          onPressed: state.hasUnsavedChanges
              ? () => _bloc.add(TaskSubmitted())
              : null,
          icon: state.uiStatus == TaskUiStatus.updating
              ? Padding(
                  padding: const EdgeInsets.all(4),
                  child: const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                )
              : PhosphorIcon(
                  PhosphorIconsDuotone.checkCircle,
                  color: state.hasUnsavedChanges
                      ? context.colorScheme.primary
                      : context.colorScheme.secondary,
                  size: 32,
                ),
          visualDensity: VisualDensity.compact,
        ),
      ],
    );
  }

  Widget _buildTitleField(BuildContext context, TaskState state) {
    return TextFormField(
      initialValue: widget.existingTask?.title,
      textCapitalization: TextCapitalization.sentences,
      onChanged: (value) => _bloc.add(TaskTitleChanged(value)),
      maxLines: 1,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      // onSubmitted: onSubmitted != null ? (_) => onSubmitted!() : null,
      style: context.textTheme.titleLarge,
      decoration: InputDecoration(
        hintText: context.s.task_title_hint,
        hintStyle: context.textTheme.titleLarge?.copyWith(
          color:
              state.uiStatus == TaskUiStatus.error && state.title.trim().isEmpty
              ? context.colorScheme.error
              : context.colorScheme.onSurface.withValues(alpha: 0.6),
        ),
        fillColor: Colors.transparent,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 0),
      ),
    );
  }

  Widget _buildDescriptionField(BuildContext context, TaskState state) {
    return TextFormField(
      initialValue: widget.existingTask?.description,
      textCapitalization: TextCapitalization.sentences,
      maxLines: null,
      onChanged: (value) => _bloc.add(TaskDescriptionChanged(value)),
      keyboardType: TextInputType.multiline,
      textInputAction: TextInputAction.newline,
      style: context.textTheme.bodyLarge,
      decoration: InputDecoration(
        hintText: context.s.task_title_hint,
        hintStyle: context.textTheme.bodyLarge?.copyWith(
          color:
              state.uiStatus == TaskUiStatus.error && state.title.trim().isEmpty
              ? context.colorScheme.error
              : context.colorScheme.onSurface.withValues(alpha: 0.6),
        ),
        fillColor: Colors.transparent,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 0),
      ),
    );
  }

  // Widget _buildMemberSection(BuildContext context, TaskState state) {
  //   if (state.availableUserMembers.isEmpty) return const SizedBox.shrink();

  //   return Column(
  //     children: [
  //       MemberChips(
  //         availableUserMembers: state.availableUserMembers,
  //         selectedMembers: state.assignedTo,
  //         onMemberToggled: (userId) => _bloc.add(TaskAssigneeToggled(userId)),
  //       ),
  //       const SizedBox(height: 24),
  //     ],
  //   );
  // }

  Widget _buildDateAndPriorityRow(BuildContext context, TaskState state) {
    return Row(
      children: [
        Expanded(child: _buildDatePicker(context, state)),
        const SizedBox(width: 16),
        _buildPrioritySelector(context, state),
      ],
    );
  }

  Widget _buildDatePicker(BuildContext context, TaskState state) {
    return InkWell(
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
                  : context.colorScheme.onSurface.withValues(alpha: 0.6),
            ),
            const SizedBox(width: 8),
            Text(
              state.dueDate != null
                  ? _formatDate(state.dueDate!)
                  : context.s.task_due_date_hint,
              style: context.textTheme.bodyLarge?.copyWith(
                color: state.dueDate != null
                    ? context.colorScheme.onSurface
                    : context.colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrioritySelector(BuildContext context, TaskState state) {
    return Row(
      children: [
        Text(
          context.s.task_priority_hint,
          style: context.textTheme.bodyLarge?.copyWith(
            color: context.colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
        const SizedBox(width: 12),
        PriorityDots(
          selectedPriority: state.priority,
          onPriorityChanged: (priority) =>
              _bloc.add(TaskPriorityChanged(priority)),
        ),
      ],
    );
  }

  Widget _buildSubtasksSection(BuildContext context, TaskState state) {
    return SubTaskInput(
      subTasks: state.subTasks,
      onSubTaskRemoved: (id) => _bloc.add(SubTaskRemoved(id)),
      onSubTaskToggled: (id, isCompleted) =>
          _bloc.add(SubTaskToggled(id, isCompleted)),
      onSubTaskTitleChanged: (id, title) =>
          _bloc.add(SubTaskTitleChanged(id, title)),
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
