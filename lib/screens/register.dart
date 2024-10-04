import 'package:app_ilpf/colors.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyScreen());

}

class MyScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterScreen(),
    );
  }

}

class RegisterScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Image.asset("app_assets/logo_menor.png" )),
          SizedBox(height: 24,),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 24, right: 24),
            child: Text( "Criar conta",
                style: Theme.of(context).textTheme.displayMedium),
          ),
          SizedBox(height: 16,),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 24, right: 24),
            child: Text(
              "Para criar e editar seus projetos, crie sua conta ILPF.",
              style: Theme.of(context).textTheme.bodyLarge,),
          ),
          SizedBox(height: 24,),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, bottom: 8),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Digite seu Nome"
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, bottom: 8),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Digite seu E-mail"
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, bottom: 8),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Digite sua Senha",
                //helperText: "Esqueçeu sua senha?",
                //helperStyle: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, bottom: 8),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Confirme sua Senha",
                //helperText: "Esqueçeu sua senha?",
                //helperStyle: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 16,),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, bottom: 4),
            alignment: Alignment.topRight,
            child: Row(
              children: [
                Expanded(child: SizedBox()),
                Expanded(
                  child: FilledButton(

                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(MyColors.greenNormal),
                      ),
                      onPressed: null,
                      child: Text("Avançar",style: TextStyle(color: Colors.white))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}