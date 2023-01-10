// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_chapter3/listwheelscrollview.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flow'),
//         ),
//         body: Flow(
//           delegate: ,
//           children: [
//             Container(color: Colors.yellow,width: 100,height: 100,),
//             Container(color: Colors.blue,width: 100,height: 100,),
//             Container(color: Colors.orange,width: 100,height: 100,),
//             Container(color: Colors.red,width: 100,height: 100,),
//             Container(color: Colors.deepPurpleAccent,width: 100,height: 100,),
//             Container(color: Colors.indigoAccent,width: 100,height: 100,),
//             Container(color: Colors.lightGreenAccent,width: 100,height: 100,),
//             Container(color: Colors.greenAccent,width: 100,height: 100,),
//             Container(color: Colors.yellow,width: 100,height: 100,),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class NightFlowDelegate extends FlowDelegate{
//   EdgeInsets margin=EdgeInsets.zero;//默认为0
//
//   NightFlowDelegate({required this.margin});
//   @override
//   void paintChildren(FlowPaintingContext context) {
//     var left=margin.left;
//     var top=margin.top;
//     for(int i=0;i<context.childCount;i++){
//       var childWidth=context.getChildSize(i)?.width+left+margin.right;//子组件的长度
//       if(childWidth<context.size.width){
//         context.paintChild(
//             i,
//             transform: new Matrix4.compose(Vector.Vector3(left,top,0.0), Vector.Quaternion(0.0,0.0,0.0,0.0), Vector.Vector3(1.0,1.0,1.0)));
//         left = childWidth + margin.left;//确定下一个位置的坐标
//       }else{
//         left = margin.left;
//         top += context.getChildSize(i)?.height + margin.top + margin.bottom;
//         //绘制子widget(有优化)
//         context.paintChild(i,
//             transform: Matrix4.translationValues(left, top, 0.0) //位移
//         );
//         left += context.getChildSize(i).width + margin.left + margin.right;
//       }
//     }
//   }
//
//   getSize(BoxConstraints constraints) {
//     //指定Flow的大小
//     return Size(double.infinity, double.infinity);
//   }
//
//   @override
//   bool shouldRepaint(FlowDelegate oldDelegate) {
//     return oldDelegate != this;
//   }
//
// }
