import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:familio/data/models/models.dart';
import 'package:familio/core/utils/context_ext.dart';

class SubTaskInput extends StatefulWidget {
  final List<SubTask> subTasks;
  final Function(String) onSubTaskRemoved;
  final Function(String, bool) onSubTaskToggled;
  final Function(String, String) onSubTaskTitleChanged;

  const SubTaskInput({
    super.key,
    required this.subTasks,
    required this.onSubTaskRemoved,
    required this.onSubTaskToggled,
    required this.onSubTaskTitleChanged,
  });

  @override
  State<SubTaskInput> createState() => _SubTaskInputState();
}

class _SubTaskInputState extends State<SubTaskInput> {
  final _addController = TextEditingController();
  final _lastSubTaskFocusNode = FocusNode();

  @override
  void dispose() {
    _addController.dispose();
    _lastSubTaskFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Existing subtasks
        ...widget.subTasks
            .sortedBy((subTask) => subTask.orderIndex)
            .asMap()
            .entries
            .map((entry) {
              final index = entry.key;
              final subTask = entry.value;
              final isLastSubTask = index == widget.subTasks.length - 1;

              return Row(
                children: [
                  IconButton(
                    icon: PhosphorIcon(
                      subTask.isCompleted
                          ? PhosphorIconsDuotone.checkCircle
                          : PhosphorIconsDuotone.circle,
                      size: 20,
                      color: subTask.isCompleted
                          ? context.colorScheme.primary
                          : context.colorScheme.onSurface,
                    ),
                    onPressed: () => widget.onSubTaskToggled(
                      subTask.id,
                      !subTask.isCompleted,
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: subTask.title,
                      enabled: !subTask.isCompleted,
                      focusNode: isLastSubTask ? _lastSubTaskFocusNode : null,
                      onChanged: (value) =>
                          widget.onSubTaskTitleChanged(subTask.id, value),
                      style: context.textTheme.bodyMedium?.copyWith(
                        decoration: subTask.isCompleted
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 0,
                        ),
                        hintText: context.s.task_subtask_hint,
                        hintStyle: context.textTheme.bodyMedium?.copyWith(
                          color: context.colorScheme.onSurface,
                        ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        fillColor: Colors.transparent,
                        filled: true,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: PhosphorIcon(
                      PhosphorIconsDuotone.xCircle,
                      size: 20,
                      color: context.colorScheme.error,
                    ),
                    onPressed: () => widget.onSubTaskRemoved(subTask.id),
                  ),
                ],
              );
            }),

        TextButton.icon(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
          ),
          onPressed: () {
            widget.onSubTaskTitleChanged('', '');
            _lastSubTaskFocusNode.unfocus();
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _lastSubTaskFocusNode.requestFocus();
            });
          },
          icon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: PhosphorIcon(
              PhosphorIconsDuotone.plusCircle,
              size: 20,
              color: context.colorScheme.primary,
            ),
          ),
          label: Text(
            context.s.task_add_subtask,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
