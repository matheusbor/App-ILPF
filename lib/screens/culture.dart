import 'package:app_ilpf/colors.dart';
import 'package:app_ilpf/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(CultureScreen());
}

class CultureScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Culture() ,
    );
  }

}

class Culture extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MaterialNavigationBar(0),
      body: Container(
        margin: EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            Center(
              child: Image.asset("app_assets/logo_menor.png"),
            ),
            SizedBox(height: 24,),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Cadastre a cultura", style: Theme.of(context).textTheme.titleLarge,),
            ),
            SizedBox(height: 24,),
            TextField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Nome da cultura",
                hintText: "|",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                      width: 3)
                ),
              ),
            ),
            SizedBox(height: 8,),
            TextField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Altura da Árvore (m)",
                hintText: "|",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                        width: 3)
                ),
              ),
            ),
            SizedBox(height: 8,),
            TextField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Altura do fuste (m)",
                hintText: "|",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                        width: 3)
                ),
              ),
            ),
            SizedBox(height: 8,),
            TextField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Raio da copa (m)",
                hintText: "|",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                        width: 3)
                ),
              ),
            ),
            SizedBox(height: 24,),
            Row(
              children: [
                Expanded(child: SizedBox()),
                Container(
                  // alignment: Alignment.topRight,
                  width: 131,
                  height: 40,
                  child: FilledButton(onPressed: ((){}),
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(MyColors.greenNormal),
                      ),
                      child: Text("Salvar")),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}