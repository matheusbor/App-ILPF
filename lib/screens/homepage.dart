import 'package:app_ilpf/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(HomePageScreen());
}

class HomePageScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: HomePage(),
    );
  }
  
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset("app_assets/logo_menor.png"),
          ),
          SizedBox(height: 24,),

          Container(
            margin: EdgeInsets.only(left: 24, right: 24),
            alignment: Alignment.topLeft,
            child: Text("Para começar...",
            style: Theme.of(context).textTheme.displaySmall,),
          ),
          SizedBox(height: 241,),
          
          FilledButton(onPressed: null,
              style: ButtonStyle(
                fixedSize: WidgetStateProperty.all(Size(218, 40)),
                backgroundColor: WidgetStateProperty.all(MyColors.greenNormal),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,//encontrar um jeito de deixar apenas o texto centralizado, e o icon apenas "leading" o botão
                children: [
                  Icon(Icons.add, color: Colors.white,),
                  SizedBox(width: 8,),
                  Text("Criar novo projeto",
                  style: TextStyle(color: Colors.white,fontSize:  Theme.of(context).textTheme.labelLarge?.fontSize),
                  ),

                ],
              )),
          SizedBox(height: 8,),
          FilledButton(onPressed: null,

              style: ButtonStyle(

                fixedSize: WidgetStateProperty.all(Size(218, 40)),
                backgroundColor: WidgetStateProperty.all(Colors.grey),
                side: WidgetStateProperty.all(BorderSide(
                  color: MyColors.greenNormal,
                  width: 1,
                ))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,//encontrar um jeito de deixar apenas o texto centralizado, e o icon apenas "leading" o botão
                children: [
                  Icon(Icons.map_outlined, color: Colors.white,),
                  SizedBox(width: 8,),
                  Text("Ver meus projetos",
                    style: TextStyle(color: Colors.white, fontSize:  Theme.of(context).textTheme.labelLarge?.fontSize),//não mudou comparado ao texto comum
                  ),

                ],
              )),
        ],
      ),
    );
  }

}