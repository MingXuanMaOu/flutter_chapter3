import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chapter3/fittedbox_code.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('baseline'),
        ),
        body: Row(
          children: [
            Baseline(baseline: 100.0,
                baselineType: TextBaseline.alphabetic,
                child: FlutterLogo(
                  size: 100.0,
                ),),
            Baseline(baseline: 100.0,
              baselineType: TextBaseline.alphabetic,
              child: FlutterLogo(
                size: 100.0,
              ),),
            Baseline(baseline: 100.0,
              baselineType: TextBaseline.alphabetic,
              child: FlutterLogo(
                size: 100.0,
              ),),
          ],
        ),
      ),
    );
  }
}