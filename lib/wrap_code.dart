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
          title: Text('wrap'),
        ),
        body: Wrap(
          spacing: 10,
          runSpacing: 1,
          children: [
            FlatButton(onPressed: ()=>{}, child: Text('Flutter技术开发')),
            FlatButton(onPressed: ()=>{}, child: Text('Python')),
            FlatButton(onPressed: ()=>{}, child: Text('Vue')),
            FlatButton(onPressed: ()=>{}, child: Text('Android Studio')),
            FlatButton(onPressed: ()=>{}, child: Text('Django')),
            FlatButton(onPressed: ()=>{}, child: Text('C/C++')),
            FlatButton(onPressed: ()=>{}, child: Text('Qt5')),
            FlatButton(onPressed: ()=>{}, child: Text('Weex')),
          ],
        ),
      ),
    );
  }
}