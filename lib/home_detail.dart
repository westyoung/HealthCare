import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'Detail.dart';

class HomeDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    HomeDetailState homeDetailState() => new HomeDetailState();
    return homeDetailState();
  }
}

class HomeDetailState extends State<HomeDetail> {

  final GlobalKey<AnimatedCircularChartState> _chartKey = new GlobalKey<AnimatedCircularChartState>();

  Material MyItems(String heading, int color, String data){
    return Material(
      color: Colors.white,
      elevation: 10.0,
      shadowColor: Colors.grey[200],
      borderRadius: BorderRadius.circular(15.0),
      child: new GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Detail()),
          );
        },
        child: Center(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      //Text
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(heading,
                          style: TextStyle(
                            color: new Color(color),
                            fontSize: 20.0,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(data,
                        style: TextStyle(
                          color: Colors.orange[500],
                          fontSize:40.0,
                        )),
                      ),

//                  //Icon
//                  Material(
//                    color: new Color(color),
//                    borderRadius: BorderRadius.circular(24.0),
//                    child: Padding(
//                      padding: const EdgeInsets.all(16.0),
//                      child: Icon(
//                        icon,
//                        color: Colors.white,
//                        size: 30.0,
//                      ),
//                    ),
//                  ),

                    ],
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }



  Material Step(){
    return Material(
      color: Colors.white,
      elevation: 10.0,
      shadowColor: Colors.grey[200],
      borderRadius: BorderRadius.circular(15.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Container(
              child: Align(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Text('Walk',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.0,
                      )
                    ),
                    new Container(
                      child: Row(
                       children: <Widget>[
                         Text('2,501',
                             style: TextStyle(
                               color: Colors.orange[500],
                               fontSize: 40.0,
                             )
                         ),
                         Text('step',
                           style: TextStyle(
                             color: Colors.orange[300],
                             fontSize: 25.0,
                           ),
                         ),
                       ],
                      )
                    ),
                  ],

                ),
              )
          ),
          new Container(
           child: Align(
              alignment: Alignment(0.80, 0),
              child: new AnimatedCircularChart(
                key: _chartKey,
                size: const Size(150.0, 150.0),
                initialChartData: <CircularStackEntry>[
                  new CircularStackEntry(
                    <CircularSegmentEntry>[
                      new CircularSegmentEntry(
                        33.33,
                        Colors.orange[400],
                        rankKey: 'completed',
                      ),
                      new CircularSegmentEntry(
                        66.67,
                        Colors.orange[50],
                        rankKey: 'remaining',
                      ),
                    ],
                    rankKey: 'progress',
                  ),
                ],
                chartType: CircularChartType.Radial,
                percentageValues: true,
                holeLabel: '25%',
                labelStyle: new TextStyle(
                  color: Colors.orange[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
          ],
        ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0, //spacing between tiles
        mainAxisSpacing: 10.0,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        children: <Widget>[
          Step(),
          MyItems("Blood Pressure", 0xFF000000, "20mg/dl"),
          MyItems("A1C", 0xFF000000, "20.0%"),
          MyItems("Height", 0xFF000000, "No data"),
          MyItems("Weight", 0xFF000000, "No data"),
          MyItems("Cholesterol", 0xFF000000, "No data"),
          MyItems("Blood Glucose", 0xFF000000, "No data"),
          MyItems("Balance", 0xFF000000, "No data"),
          MyItems("HeartRate", 0xFF000000, "No data"),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 200.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),

        ],
      )
    );
  }

}