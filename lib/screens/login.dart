import 'package:flutter/material.dart';

void main(){
  runApp(MyScreen());

}

class MyScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
  
}

class LoginScreen extends StatelessWidget{
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
            child: Text( "Fazer Login",
              style: Theme.of(context).textTheme.displayMedium),
          ),
          SizedBox(height: 16,),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 24, right: 24),
            child: Text(
                "Para criar e editar seus projetos, entre em sua conta ILPF.",
            style: Theme.of(context).textTheme.bodyLarge,),
          ),
          SizedBox(height: 24,),
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
                helperText: "Esqueçeu sua senha?",
                helperStyle: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 4,),
          OutlinedButton(onPressed: null,
              child: Text("Avançar")),
        ],
      ),
    );
  }
}