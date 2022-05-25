import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/widgets.dart';

/// Wraps a [child] widget and applies some default behaviours
///
/// Recommended to be used in [SideTitles.getTitlesWidget]
/// You need to pass [axisSide] value that provided by [TitleMeta]
/// It forces the widget to be close to the chart.
/// It also applies a [space] to the chart.
/// You can also fill [angle] in radians if you need to rotate your widget.
class SideTitleWidget extends StatelessWidget {
  final double space;
  final Widget child;
  final double angle;

  const SideTitleWidget({
    Key? key,
    required this.child,
    this.space = 8.0,
    this.angle = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        child: child,
      ),
    );
  }
}
