import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool _switch =false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData light = ThemeData(brightness: Brightness.light);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _dark : light,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Day and Night', style: TextStyle(
            color: Colors.redAccent,fontSize: 40,fontWeight: FontWeight.w500,

          ),),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lightbulb,size: 90,color: Colors.yellow,),
              SizedBox(height: 30,),
              Text("Switch",style: TextStyle(
                fontSize: 40,color: Colors.green,
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Switch(value: _switch, onChanged: (_newvalue){
                setState(() {
                  _switch = _newvalue;Alignment.centerRight;
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}

