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
      home: Scaffold(
        appBar: AppBar(
          title: Text('CustomMultiChildLayout'),
        ),
        body: Center(
          child: Table(
            columnWidths: const{
              0: FixedColumnWidth(100.0),
              1: FixedColumnWidth(200.0),
              2: FixedColumnWidth(50.0),
            },
            border: TableBorder.all(
              color: Colors.blue,
              width: 2,
              style: BorderStyle.solid
            ),
            children: [
              TableRow(
                decoration: BoxDecoration(
                  color: Colors.yellow
                ),
                children: [
                  Text('姓名'),
                  Text('职业'),
                  Text('年龄'),
                ]
              ),
              TableRow(
                decoration: BoxDecoration(
                  color: Colors.yellow
                ),
                children: [
                  Text('张三'),
                  Text('产品经理'),
                  Text('30'),
                ]
              ),
              TableRow(
                  decoration: BoxDecoration(
                      color: Colors.yellow
                  ),
                  children: [
                    Text('李四'),
                    Text('软件工程师'),
                    Text('27'),
                  ]
              ),
              TableRow(
                  decoration: BoxDecoration(
                      color: Colors.yellow
                  ),
                  children: [
                    Text('王五'),
                    Text('执行总裁'),
                    Text('55'),
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}