import 'package:flutter/material.dart';

class kptech extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      color: Colors.purple,
      title: "Kptech",
      home:Scaffold(
        appBar: new AppBar( title: new Text("Kptech "),),
        body: mykptech(),
      ),
    );
  }

}

// ignore: camel_case_types
class mykptech extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _mykptech();
  }


}

class _mykptech extends State<mykptech>{
  @override
  Widget build(BuildContext context) {
    Navigator.canPop(context);
    // TODO: implement build
    return new Container(
      color:Colors.purple,
      alignment: Alignment.center,
      child: new Text("Welcome in the Admin Pannel",),


    );
  }


}