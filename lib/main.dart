import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: screen(),
    );
  }
}
class screen extends StatefulWidget {
  

  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {
  String?s ="Show";
  double? op=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(s!,style: TextStyle(color: Colors.blue,fontSize: 20),),
      ),
      body: Center(
        child:Column(
          children: [
            Image.network("https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg"),
            SizedBox(height: 10,),


            GestureDetector(
              onTap: changeopisity,

                child: Text(s!,style: TextStyle(fontSize: 20,color: Colors.blue),)),
            SizedBox(height: 10,),
            AnimatedOpacity(

              duration: Duration(seconds: 2),
              opacity: op!,

                child: Container(
                  width: 200,
                  height: 200,
                  child: Column(
                    children: [
                      Text("Type:Owl",style: TextStyle(fontSize: 20,color: Colors.black),),
                      SizedBox(height: 10,),
                      Text("Age:39",style: TextStyle(fontSize: 20,color: Colors.black),),
                      SizedBox(height: 10,),Text("Employment:None",style: TextStyle(fontSize: 20,color: Colors.black),),


                    ],
                  ),

              ),
            ),
          ],
        ),

      ),

      
      
      
    );
  }

  changeopisity() {

    setState(() {
      if(op==0){
        op=1;
        s="Hide";
      }else{
        op=0;
        s="Show";

      }
    });
  }
}


