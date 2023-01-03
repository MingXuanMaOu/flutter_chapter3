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
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('FittedBox'),
        ),
        body: Column(
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
              child: FittedBox(
                child: Text('                   BoxFit.contain',style: TextStyle(fontSize: 32),),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
              child: FittedBox(
                child: Text('                   BoxFit.contain',style: TextStyle(fontSize: 32),),
                fit: BoxFit.cover,
              )
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.yellow,
              child: FittedBox(
                child: Text('                   BoxFit.contain',style: TextStyle(fontSize: 32),),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.orange,
              child: FittedBox(
                child: Text('                   BoxFit.contain',style: TextStyle(fontSize: 32),),
                fit: BoxFit.scaleDown,
              ),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.indigo,
              child: FittedBox(
                child: Text('                   BoxFit.contain',style: TextStyle(fontSize: 32),),
                fit: BoxFit.fitHeight,
              ),
            )
          ],
        ),
      ),
    );
  }
}