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
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('index'),
        ),
        body: Center(
          child: IndexedStack(
            index: 2,
            alignment: Alignment.center,
            children: [
              Text('第一层'),
              Text('第二层'),
              Text('第三层'),
            ],
          ),
        ),
      ),
    );
  }
}