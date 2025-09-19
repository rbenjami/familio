import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:familio/data/models/models.dart';
import 'package:familio/core/utils/context_ext.dart';

class SubTaskInput extends StatefulWidget {
  final List<SubTask> subTasks;
  final Function(String) onSubTaskAdded;
  final Function(int) onSubTaskRemoved;
  final Function(int, String) onSubTaskTitleChanged;

  const SubTaskInput({
    super.key,
    required this.subTasks,
    required this.onSubTaskAdded,
    required this.onSubTaskRemoved,
    required this.onSubTaskTitleChanged,
  });

  @override
  State<SubTaskInput> createState() => _SubTaskInputState();
}

class _SubTaskInputState extends State<SubTaskInput> {
  final _addController = TextEditingController();
  bool addSubTaskHasFocus = false;

  @override
  void dispose() {
    _addController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Existing subtasks
        ...widget.subTasks.asMap().entries.map((entry) {
          final index = entry.key;
          final subTask = entry.value;

          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Text(
                  '•',
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: context.colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: TextEditingController(text: subTask.title),
                    onChanged: (value) =>
                        widget.onSubTaskTitleChanged(index, value),
                    style: context.textTheme.bodyMedium,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      hintText: context.s.task_subtask_hint,
                      hintStyle: context.textTheme.bodyMedium?.copyWith(
                        color: context.colorScheme.onSurface.withValues(
                          alpha: 0.6,
                        ),
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ),
                IconButton(
                  icon: PhosphorIcon(
                    PhosphorIconsDuotone.x,
                    size: 16,
                    color: context.colorScheme.error,
                  ),
                  onPressed: () => widget.onSubTaskRemoved(index),
                  visualDensity: VisualDensity.compact,
                ),
              ],
            ),
          );
        }),

        // Add new subtask button
        Focus(
          onFocusChange: (hasFocus) =>
              setState(() => addSubTaskHasFocus = hasFocus),
          child: TextField(
            controller: _addController,
            onChanged: (value) =>
                widget.onSubTaskTitleChanged(widget.subTasks.length, value),
            style: context.textTheme.bodyMedium,
            decoration: InputDecoration(
              prefixIcon: PhosphorIcon(
                PhosphorIconsDuotone.plusCircle,
                size: 16,
                color: context.colorScheme.primary,
              ),
              hintText: context.s.task_add_subtask,
              hintStyle: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.primary,
              ),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              // contentPadding: const EdgeInsets.symmetric(vertical: 8),
              fillColor: Colors.transparent,
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
