import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          title: Text('Flex'),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(child: Container(color: Colors.yellow,),flex: 1,),
                  Expanded(child: Container(color: Colors.blue,),flex: 2,)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}