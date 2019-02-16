import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final GlobalKey<AnimatedCircularChartState> _chartKey = new GlobalKey<AnimatedCircularChartState>();

  @override
  Widget build(BuildContext context) {
    return new AnimatedCircularChart(
      key: _chartKey,
      size: const Size(200.0, 200.0),
      initialChartData: <CircularStackEntry>[
        new CircularStackEntry(
          <CircularSegmentEntry>[
            new CircularSegmentEntry(
              33.33,
              Colors.blue[400],
              rankKey: 'completed',
            ),
            new CircularSegmentEntry(
              66.67,
              Colors.blueGrey[600],
              rankKey: 'remaining',
            ),
          ],
          rankKey: 'progress',
        ),
      ],
      chartType: CircularChartType.Radial,
      percentageValues: true,
      holeLabel: '1/3',
      labelStyle: new TextStyle(
        color: Colors.blueGrey[600],
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      ),
    );
  }



}