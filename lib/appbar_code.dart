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
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.add_to_photos),
            onPressed: ()=>{},
          ),
          title: new Text('AppBar'),
          actions: [
            IconButton(onPressed: ()=>{},
                icon: Icon(Icons.add,),
                tooltip: '添加',),
            IconButton(onPressed: ()=>{},
                icon: Icon(Icons.delete),
                tooltip: '删除',),
            IconButton(onPressed: ()=>{},
                icon: Icon(Icons.search),
                tooltip: '查询',)
          ],
        ),
      ),
    );
  }
}