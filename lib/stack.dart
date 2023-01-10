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
          child: Stack(
            alignment: Alignment(0.1,1),
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/press.jpg'),
                radius: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black45
                ),
                child: Text(
                  '人们邮电出版社',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}