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
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Flex'),
        ),
        body:
        // ListView(
        //   itemExtent: 30.0,
        //   children: [
        //     Text('1'),
        //     Text('2'),
        //     Text('3'),
        //     Text('4'),
        //   ],
        // ListView.builder(itemBuilder: (context,position){
        //   return Text('$position');
        // },
        // itemExtent: 30.0,
        // itemCount: 4,)
        ListView.separated(itemBuilder: (context,position){
          return Text('$position');
        }, separatorBuilder: (context,position){
          return Container(
            width: 500,
            height: 20,
            color: Colors.red,
          );
        }, itemCount: 10)
      ),
    );
  }
}