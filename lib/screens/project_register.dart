import 'package:app_ilpf/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ProjectRegisterScreen());
}

class ProjectRegisterScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProjectRegister(),
    );
  }

}
class ProjectRegister extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MaterialNavigationBar(0),
      body: Container(
        margin: EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            Center(
              child:
              Image.asset("app_assets/logo_menor.png"),
            ),
            SizedBox(height: 24,),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Cadastre seu Projeto",
              style: Theme.of(context).textTheme.titleLarge,),
            ),
            SizedBox(height: 24,),
            Expanded(
              child: ListView(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Nome",
                      labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      hintText: "|",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(4)
                      )
                    ),
                  ),
                  SizedBox(height: 8,),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text("Selecione o ponto do seu projeto",
                        style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Divider(height: 1,),
                      Container(
                        // decoration: BoxDecoration(
                        //   border: Border.all(),
                        // ),
                        child: Row(
                          children: [
                            Image.asset("app_assets/marker.png"),
                            SizedBox(width: 16,),
                            Text("Ponto 1"),
                            Spacer(),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Latitude"),
                                Text("Longitude"),
                              ],
                            ),
                            SizedBox(width: 9,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("000000"),
                                Text("000000"),
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(height: 1,),
                    ],
                  ),
                  const SizedBox(height: 20 ,),
                   DropdownMenu(
                    width: MediaQuery.of(context).size.width - 48,


                      label: Text("Selecione o tipo de Cultura"),

                      dropdownMenuEntries: [
                        DropdownMenuEntry(value: "Pinheiros", label: "Pinheiros"),
                        DropdownMenuEntry(value: "Carvalho", label: "Carvalho"),
                        DropdownMenuEntry(value: "Nova",
                            leadingIcon: Icon(Icons.add),
                            label: "Cadastrar nova cultura"),
                      ]),

                  SizedBox(height: 16,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Espaçamento dos Renques",
                        labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                        hintText: "|",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(4)
                        )
                    ),
                  ),
                  SizedBox(height: 8,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Comprimento dos Renques",
                        labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                        hintText: "|",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(4)
                        )
                    ),
                  ),
                  SizedBox(height: 8,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Número de Árvores",
                        labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                        hintText: "|",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(4)
                        )
                    ),
                  ),
                  SizedBox(height: 16,),
                  CultureCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}