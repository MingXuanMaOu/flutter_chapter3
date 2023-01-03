import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chapter3/button_code.dart';

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
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            // alignment: Alignment(0.0,0.0),
            alignment: Alignment.center,
            // constraints: BoxConstraints(
            //   maxHeight: 200.0,
            //   maxWidth: 200.0,
            //   minHeight: 50,
            //   minWidth: 50,
            // ),
            constraints: BoxConstraints.expand(width: 200,height: 50),
            // padding: EdgeInsets.only(),
            // margin: EdgeInsets.only(),
            width: 100,
            height: 10,
            child: Text('我在中间'),
              // padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}