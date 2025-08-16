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
                    onChanged: (value) => widget.onSubTaskTitleChanged(index, value),
                    style: context.textTheme.bodyMedium,
                    decoration: InputDecoration(
                      hintText: context.s.task_subtask_hint,
                      hintStyle: context.textTheme.bodyMedium?.copyWith(
                        color: context.colorScheme.onSurface.withValues(alpha: 0.6),
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
        InkWell(
          onTap: _showAddSubTaskInput,
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
            child: Row(
              children: [
                PhosphorIcon(
                  PhosphorIconsDuotone.plus,
                  size: 16,
                  color: context.colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  context.s.task_add_subtask,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showAddSubTaskInput() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => Container(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: context.mediaQuery.viewInsets.bottom + 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _addController,
              autofocus: true,
              textInputAction: TextInputAction.done,
              onSubmitted: _addSubTask,
              style: context.textTheme.bodyLarge,
              decoration: InputDecoration(
                hintText: context.s.task_subtask_placeholder,
                hintStyle: context.textTheme.bodyLarge?.copyWith(
                  color: context.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _addSubTask(_addController.text),
                child: Text(context.s.task_add_subtask_button),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addSubTask(String title) {
    if (title.trim().isNotEmpty) {
      widget.onSubTaskAdded(title.trim());
      _addController.clear();
      Navigator.pop(context);
    }
  }
}