import 'package:app_ilpf/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Splash(),
    );
  }

}

class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.greenNormal,
      body: Center(
        child: Image.asset("app_assets/logo.png"),
      ),
    );
  }

}