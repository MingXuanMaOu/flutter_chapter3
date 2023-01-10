import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chapter3/listwheelscrollview.dart';

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
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Grid'),
        ),
        body:
        // GridView.count(crossAxisCount: 2,
        // mainAxisSpacing: 10.0,
        // crossAxisSpacing: 10.0,
        // children: [
        //   Container(
        //     width: 200,
        //     height: 200,
        //     color: Colors.yellow,
        //   ),
        //   Container(
        //     width: 200,
        //     height: 200,
        //     color: Colors.blue,
        //   ),
        //   Container(
        //     width: 200,
        //     height: 200,
        //     color: Colors.greenAccent,
        //   ),
        // ],),
        GridView.extent(maxCrossAxisExtent: 130.0,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
        ],)
      ),
    );
  }
}