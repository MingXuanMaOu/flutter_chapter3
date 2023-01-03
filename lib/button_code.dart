import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chapter3/main.dart';

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
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                onPressed: ()=>{},
                child: Text('RaisedButton'),
                textColor: Colors.red,
                color: Colors.blue,),
              FlatButton(onPressed: ()=>{},
                  child: Text('FlatButton'),
                  textColor: Colors.red,),
              IconButton(onPressed: ()=>{},
                  icon: Icon(Icons.close)),
              OutlinedButton(onPressed: ()=>{},
                  child: Text('OutlineButton',style: TextStyle(
                    color: Colors.red
                  ),),),
              OutlinedButton(onPressed: ()=>{},
                child: Text("我是自定义按钮"),
                style: ButtonStyle(
                  shape:MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                )),
              Icon(Icons.forward,
                color: Colors.blue,),
              Image(
                image: AssetImage("images/press.jpg"),
                width: 500,
              ),
              FlutterLogo(
                size: 100.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}