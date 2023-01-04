import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chapter3/fittedbox_code.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  List<String> list = [
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2020-05-19%2F5ec373ad05b63.jpg&refer=http%3A%2F%2Fpic1.win4000.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1675390914&t=60d7ecd9c6340b9c6722ab27e13fb1c3",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2020-05-19%2F5ec382b237f07.jpg&refer=http%3A%2F%2Fpic1.win4000.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1675390914&t=860f080b48a52e90caa506c82b8cd0c4",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.win4000.com%2Fmobile%2F2020-06-24%2F5ef3027273f4b.jpg&refer=http%3A%2F%2Fpic1.win4000.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1675390914&t=82530d0700aa124a00893c320111b85f",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201808%2F11%2F20180811213031_trrub.jpg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1675390914&t=c308c7d63ae537def256614013189645",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.win4000.com%2Fmobile%2F2020-07-22%2F5f17970276a72.jpg&refer=http%3A%2F%2Fpic1.win4000.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1675390914&t=81b58cb8ec9eaac0250293a55ee5423d",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.win4000.com%2Fmobile%2F2019-10-24%2F5db16cfd230ac.jpg&refer=http%3A%2F%2Fpic1.win4000.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1675390914&t=71d76dbbbe7e546563dded4e67148d76",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202004%2F06%2F20200406224717_tpcqd.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1675390914&t=dad8e795788fe8327c95c21b44cf37dd"
  ];

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
          title: Text('ListWheelScrollView'),
        ),
        body: ListWheelScrollView(
          itemExtent: 150,
          children: list.map((e){
            return Card(
              child: Row(
                children: [
                  Image.network(e,width: 150,),
                  Text('测试')
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}