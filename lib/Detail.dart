import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: new Center(
          child:
          Image.asset('assets/TeloMD.png',),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:20.0),
            child: Icon(Icons.notifications_none, color: Colors.grey),
          ),
        ],
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}