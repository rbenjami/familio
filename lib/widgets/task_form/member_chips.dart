import 'package:flutter/material.dart';
import 'package:familio/data/models/models.dart';
import 'package:familio/core/utils/context_ext.dart';

class MemberChips extends StatelessWidget {
  final List<User> availableMembers;
  final List<String> selectedMembers;
  final Function(String) onMemberToggled;

  const MemberChips({
    super.key,
    required this.availableMembers,
    required this.selectedMembers,
    required this.onMemberToggled,
  });

  @override
  Widget build(BuildContext context) {
    if (availableMembers.isEmpty) {
      return const SizedBox.shrink();
    }

    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: availableMembers.map((member) {
        final isSelected = selectedMembers.contains(member.id);

        return FilterChip(
          selected: isSelected,
          label: Text(member.name),
          onSelected: (_) => onMemberToggled(member.id),
          showCheckmark: false,
          selectedColor: context.colorScheme.primary.withValues(alpha: 0.15),
          checkmarkColor: context.colorScheme.primary,
          side: BorderSide(
            color: isSelected
                ? context.colorScheme.primary
                : context.colorScheme.outline.withValues(alpha: 0.5),
          ),
          labelStyle: context.textTheme.labelMedium?.copyWith(
            color: isSelected
                ? context.colorScheme.primary
                : context.colorScheme.onSurface,
          ),
        );
      }).toList(),
    );
  }
}
