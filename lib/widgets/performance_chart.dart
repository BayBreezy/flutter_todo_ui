import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../info.dart';

class PerformanceChart extends StatelessWidget {
  const PerformanceChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        borderData: FlBorderData(
          show: false,
        ),
        // alignment: BarChartAlignment.spaceBetween,
        gridData: FlGridData(
          drawVerticalLine: false,
        ),
        titlesData: FlTitlesData(
            topTitles: SideTitles(showTitles: false),
            leftTitles: SideTitles(showTitles: true),
            rightTitles: SideTitles(showTitles: false),
            bottomTitles: SideTitles(
                showTitles: true,
                getTitles: (v) {
                  switch (v.toInt()) {
                    case 0:
                      return "Mon";
                    case 1:
                      return "Tue";
                    case 2:
                      return "Wed";
                    case 3:
                      return "Thu";
                    case 4:
                      return "Fri";
                    case 5:
                      return "Sat";
                    case 6:
                      return "Sun";
                    default:
                      return "";
                  }
                })),
        barGroups: chartData
            .map(
              (e) => BarChartGroupData(
                x: e["x"]!.toInt(),
                barRods: [
                  BarChartRodData(
                    y: e["y1"]!.toDouble(),
                    colors: [Theme.of(context).primaryColor],
                  ),
                  BarChartRodData(
                    y: e["y2"]!.toDouble(),
                    colors: [Theme.of(context).primaryColor],
                  ),
                ],
                barsSpace: 7,
              ),
            )
            .toList(),
      ),
    );
  }
}
