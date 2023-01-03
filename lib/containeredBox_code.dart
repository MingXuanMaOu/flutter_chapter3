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
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(width: 100,height: 80),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellowAccent,style: BorderStyle.solid,width: 5),
              image: DecorationImage(
                image: AssetImage('images/phone.jpg')
              ),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: Colors.redAccent,
                  offset: Offset(20,20),
                  blurRadius: 10
                )
              ]
            ),
            transform: Matrix4.rotationZ(.3),
            child: Text(""),
          ),
        ),
      ),
    );
  }
}