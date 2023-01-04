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
        appBar: AppBar(
          title: Text('Row和Column'),
        ),
        body: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          textDirection: TextDirection.rtl,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.yellow,
              alignment: Alignment.center,
              child: Text('1',style: TextStyle(fontSize: 20),),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.yellow,
              alignment: Alignment.center,
              child: Text('2',style: TextStyle(fontSize: 20),),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.yellow,
              alignment: Alignment.center,
              child: Text('3',style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}