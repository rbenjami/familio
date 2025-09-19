import 'package:flutter/material.dart';
import 'package:familio/data/models/models.dart';
import 'package:familio/core/utils/context_ext.dart';

class PriorityDots extends StatelessWidget {
  final Priority selectedPriority;
  final Function(Priority) onPriorityChanged;

  const PriorityDots({
    super.key,
    required this.selectedPriority,
    required this.onPriorityChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: Priority.values.map((priority) {
        final isSelected = selectedPriority == priority;
        final color = _getPriorityColor(priority);

        return GestureDetector(
          onTap: () => onPriorityChanged(priority),
          child: Container(
            margin: const EdgeInsets.only(right: 8),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? color : context.colorScheme.outline.withValues(alpha: 0.3),
                border: Border.all(
                  color: color,
                  width: isSelected ? 2 : 1,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Color _getPriorityColor(Priority priority) {
    switch (priority) {
      case Priority.low:
        return Colors.green;
      case Priority.medium:
        return Colors.orange;
      case Priority.high:
        return Colors.red;
    }
  }
}