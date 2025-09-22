import 'package:familio/core/utils/context_ext.dart';
import 'package:familio/data/models/enums/task_status.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class TaskStatusChip extends StatefulWidget {
  final TaskStatus status;
  final Function(TaskStatus) onStatusChanged;

  const TaskStatusChip({
    super.key,
    required this.status,
    required this.onStatusChanged,
  });

  @override
  State<TaskStatusChip> createState() => _TaskStatusChipState();
}

class _TaskStatusChipState extends State<TaskStatusChip> {
  late PageController _pageController;
  late int _currentIndex;
  double _pageValue = 0.0;
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();
    _currentIndex = TaskStatus.values.indexOf(widget.status);
    _pageController = PageController(
      initialPage: _currentIndex,
      viewportFraction: 1.0,
    );
    _pageValue = _currentIndex.toDouble();

    _pageController.addListener(() {
      if (mounted) {
        setState(() {
          _pageValue = _pageController.page ?? _currentIndex.toDouble();
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant TaskStatusChip oldWidget) {
    if (widget.status != oldWidget.status) {
      _animateToPage(TaskStatus.values.indexOf(widget.status));
    }
    super.didUpdateWidget(oldWidget);
  }

  void _animateToPage(int index) async {
    _isAnimating = true;
    await _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    _isAnimating = false;
  }

  @override
  Widget build(BuildContext context) {
    final currentColor = _getCurrentColor();

    return InkWell(
      onTap: () => _showStatusMenu(context),
      child: SizedBox(
        height: 32,
        width: 80,
        child: Container(
          decoration: ShapeDecoration(
            color: currentColor.withValues(alpha: 0.1),
            shape: ContinuousRectangleBorder(
              side: BorderSide(color: currentColor.withValues(alpha: 0.3)),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: PageView.builder(
            controller: _pageController,
            physics: const PageScrollPhysics(),
            pageSnapping: true,
            onPageChanged: (index) {
              if (_isAnimating) return;
              final newStatus = TaskStatus.values[index];
              if (newStatus != widget.status) {
                widget.onStatusChanged(newStatus);
              }
              setState(() {
                _currentIndex = index;
              });
            },
            itemCount: TaskStatus.values.length,
            itemBuilder: (context, index) {
              final status = TaskStatus.values[index];
              final progress = 1.0 - (_pageValue - index).abs().clamp(0.0, 1.0);

              return _buildText(context, status, progress);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildText(BuildContext context, TaskStatus status, double progress) {
    final color = _getStatusColor(context, status);

    return Center(
      child: Text(
        _getStatusLabel(context, status),
        style: context.textTheme.labelSmall?.copyWith(
          color: color.withValues(alpha: progress),
          fontWeight: progress > 0.5 ? FontWeight.w600 : FontWeight.normal,
        ),
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Color _getCurrentColor() {
    if (_pageValue.isNaN ||
        _pageValue < 0 ||
        _pageValue >= TaskStatus.values.length) {
      return _getStatusColor(context, widget.status);
    }

    if (_pageValue == _pageValue.floor()) {
      final index = _pageValue.floor().clamp(0, TaskStatus.values.length - 1);
      return _getStatusColor(context, TaskStatus.values[index]);
    }

    final lowerIndex = _pageValue.floor().clamp(
      0,
      TaskStatus.values.length - 1,
    );
    final upperIndex = _pageValue.ceil().clamp(0, TaskStatus.values.length - 1);
    final t = _pageValue - lowerIndex;

    final lowerColor = _getStatusColor(context, TaskStatus.values[lowerIndex]);
    final upperColor = _getStatusColor(context, TaskStatus.values[upperIndex]);

    return Color.lerp(lowerColor, upperColor, t) ?? lowerColor;
  }

  String _getStatusLabel(BuildContext context, TaskStatus status) {
    return switch (status) {
      TaskStatus.pending => context.s.task_status_pending,
      TaskStatus.inProgress => context.s.task_status_in_progress,
      TaskStatus.completed => context.s.task_status_completed,
      TaskStatus.cancelled => context.s.task_status_cancelled,
    };
  }

  PhosphorIconData _getStatusIcon(TaskStatus status) {
    return switch (status) {
      TaskStatus.pending => PhosphorIconsDuotone.circle,
      TaskStatus.inProgress => PhosphorIconsDuotone.clockCounterClockwise,
      TaskStatus.completed => PhosphorIconsDuotone.checkCircle,
      TaskStatus.cancelled => PhosphorIconsDuotone.xCircle,
    };
  }

  Color _getStatusColor(BuildContext context, TaskStatus status) {
    return switch (status) {
      TaskStatus.pending => Colors.grey,
      TaskStatus.inProgress => Colors.orange,
      TaskStatus.completed => Colors.green,
      TaskStatus.cancelled => Colors.red,
    };
  }

  void _showStatusMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: TaskStatus.values.map((statusOption) {
            return ListTile(
              leading: PhosphorIcon(_getStatusIcon(statusOption)),
              title: Text(_getStatusLabel(context, statusOption)),
              trailing: statusOption == widget.status
                  ? PhosphorIcon(PhosphorIconsDuotone.check)
                  : null,
              onTap: () {
                Navigator.pop(context);
                widget.onStatusChanged(statusOption);
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
