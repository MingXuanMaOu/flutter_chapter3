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
          title: Text('customMultiChildLayout'),
        ),
        body: CustomMultiChildLayout(
          delegate: _MyLayoutDelegate(),
          children: [
            LayoutId(id: _MyLayoutDelegate.layoutTitle,
                child: Text('这是Title')
            ),
            LayoutId(id: _MyLayoutDelegate.body,
                child: Text('这是body'))
          ],
        ),
      ),
    );
  }
}

class _MyLayoutDelegate extends MultiChildLayoutDelegate{
  static const String layoutTitle = 'layout_bar';
  static const String body = 'body';

  @override
  void performLayout(Size size) {
    Size layoutSize = layoutChild(layoutTitle, new BoxConstraints(maxHeight: size.height,maxWidth: size.width));
    positionChild(layoutTitle, Offset(10.0, 0.0));
    layoutChild(body, BoxConstraints.tight(Size(size.width,size.height)));
    positionChild(body, Offset(0.0, layoutSize.height));
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    // TODO: implement shouldRelayout
    return false;
  }
}