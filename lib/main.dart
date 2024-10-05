
import 'package:app_ilpf/screens/homepage.dart';
import 'package:app_ilpf/screens/splash.dart';
import 'package:app_ilpf/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MyHomePage(),
    );
  }

}

class MyHomePage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 2)),
        builder:
            (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return SplashScreen();
          } else {
            return HomePageScreen();
          }
            },
            );
  }
}
