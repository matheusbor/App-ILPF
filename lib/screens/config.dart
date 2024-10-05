import 'package:app_ilpf/colors.dart';
import 'package:app_ilpf/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ConfigScreen());
}

class ConfigScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Config(),
    );
  }

}

class Config extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MaterialNavigationBar( 2,),
      body: Column(
        children: [
          Center(
            child:
            Image.asset("app_assets/logo_menor.png"),
          ),
          SizedBox(height: 17,),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyColors.greenNormal,
                  ),
                ),
                SizedBox(width: 34,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Usuário"),
                    Text("usuario@gmail.com")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}