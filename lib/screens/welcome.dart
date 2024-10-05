import 'package:app_ilpf/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(WelcomeScreen());
}

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Welcome(),
    );
  }

}

class Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Image.asset("app_assets/logo_menor.png"),
          ),
          SizedBox(height: 24,),

          Container(
            margin: EdgeInsets.only(left: 24, right: 24),
            alignment: Alignment.topLeft,
            child: Text("Seja Bem vindo(a)",
              style: Theme.of(context).textTheme.headlineLarge,),
          ),
          SizedBox(height: 237,),

          Container(
            // decoration:
            // BoxDecoration(
            //   border: Border.all()
            // ),

            height: 40,
            child: FilledButton(onPressed: null,

                style: ButtonStyle(

                  fixedSize: WidgetStateProperty.all(Size(218, 40)),
                  backgroundColor: WidgetStateProperty.all(MyColors.greenNormal),

                ),
                child: Text("Criar nova conta",
                  style: TextStyle(color: Colors.white,fontSize:  Theme.of(context).textTheme.labelLarge?.fontSize),
                )),
          ),
          SizedBox(height: 21,),
          Container(
            margin: EdgeInsets.zero,
            height: 40,
            //decoration:
            // BoxDecoration(
            //     border: Border.all()
            // ),
            child: FilledButton(onPressed: null,

                style: ButtonStyle(

                    fixedSize: WidgetStateProperty.all(Size(218, 40)),
                    backgroundColor: WidgetStateProperty.all(Colors.grey),
    padding: WidgetStateProperty.all(EdgeInsets.zero),
                    side: WidgetStateProperty.all(BorderSide(
                      color: MyColors.greenNormal,
                      width: 1,
                    ))
                ),
                child: Text("Entrar em minha conta",
                  style: TextStyle(color: Colors.white, fontSize:  Theme.of(context).textTheme.labelLarge?.fontSize),//não mudou comparado ao texto comum
                )),
          ),
        ],
      ),
    );
  }

}