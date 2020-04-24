import 'package:alert_dialog_in_fluuter/kptech.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
void main() {
  runApp(kalka());
}
class kalka extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Alert dialog",
      debugShowMaterialGrid: false,
      color: Colors.red,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
      appBar: new AppBar(
      title: new Text("Alert dialog",style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
    elevation: 20.0,
    ),
        body: alertdialog(),
      ));
  }


}

class alertdialog extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _alertdialog();
  }
}
class _alertdialog extends State<alertdialog>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Center(
          child:  new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FlatButton(
                color: Colors.deepPurple,
                onPressed: (){
                 Alert(
                   //image: Image.network("https://he-s3.s3.amazonaws.com/media/avatars/kalkaprasad/resized/160/02a3467whatsapp_image_2020-02-24_at_7.06.39_pm.jpeg",
                  // alignment: Alignment.center,
                  // fit: BoxFit.cover,),
                   type: AlertType.success,
                   title: "Sos Service",
                   context: context,
                   style:AlertStyle(backgroundColor: Colors.teal,animationDuration: Duration(milliseconds: 300),animationType: AnimationType.grow),
                   desc: "This is the App Develope by kp singh",
                   buttons:[
                     DialogButton(
                       radius: BorderRadius.circular(20),


                       color: Colors.red,
                      child: new Text("Book service",style: TextStyle(color: Colors.white, fontSize: 20),),
                       onPressed: (){
                         Navigator.pop(context);
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>kptech()));

                       },

                     ),
                     DialogButton(

                       radius: BorderRadius.circular(20),
                       color: Colors.purple,
                       child: new Text("Close Service",style: TextStyle(color: Colors.white, fontSize: 20),),
                       onPressed: (){
                         Navigator.pop(context);
                       },

                     )
                   ]
                 ).show();
                },
                child: new Text("First Alert Box"),
              )
            ],
          )
        );
  }
}


