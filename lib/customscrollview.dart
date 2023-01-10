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
          title: Text('CustomScrollview'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverGrid(delegate: SliverChildBuilderDelegate((BuildContext context,int index){
              return Container(
                alignment: Alignment.center,
                color: Color.fromARGB(255, 255-index*6, 255-index*20, index*50),
                child: Text('gridview$index'),
              );
            },childCount: 10), gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 4
            )),

            SliverFixedExtentList(delegate: SliverChildBuilderDelegate((BuildContext context,int index){
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100*(index%5)],
                child: Text('listview$index'),
              );
            }), itemExtent: 50)
          ],
        ),
      ),
    );
  }
}