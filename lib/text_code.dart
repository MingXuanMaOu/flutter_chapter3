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
        primarySwatch: Colors.blue
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('因为我们的福音传到你们那里、不独在乎言语、也在乎权能、和圣灵、并充足的信心．正如你们知道我们在你们那里、为你们的缘故是怎样为人。 ',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.red,
            fontSize: 32,
            decoration: TextDecoration.underline
          ),),
        ),
      ),
    );
  }
}