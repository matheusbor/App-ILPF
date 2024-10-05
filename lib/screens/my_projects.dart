import 'package:app_ilpf/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyProjectsScreen());
}

class MyProjectsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProjects(),
    );
  }

}

class MyProjects extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child:
            Image.asset("app_assets/logo_menor.png"),
          ),
          SizedBox(height: 24,),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(right: 24, left: 24),
            child: Text("Seus projetos",
            style: Theme.of(context).textTheme.titleLarge,),
          ),
          Container(
            margin: EdgeInsets.only(right: 24, left: 24),
            child:  Divider(height: 1,),
          ),
          SizedBox(height: 20,),

          Container(
            margin: EdgeInsets.only(right: 24, left: 24),
            child:  Divider(height: 1,),
          ),
          Container(
            margin: EdgeInsets.only(right: 24, left: 24, bottom: 0),
            //decoration:
            // BoxDecoration(
            //   border: Border.all(),
            // ),

            child: Row(
              children: [

                Container(
                  width: 64,
                  height: 62,
                  decoration: BoxDecoration(
                    color: MyColors.greenNormal,
                    shape: BoxShape.rectangle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text("Projeto 1"),
                ),
                  Spacer(),
                 Container(
                   alignment: Alignment.centerRight ,
                   child: Column(
                     //crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          child: IconButton(onPressed: ((){}),
                              icon: Icon(Icons.edit_outlined, size: 20,),
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(maxWidth: 20, maxHeight: 20)
                          ),
                        ),
                        SizedBox(height: 16,),
                        Container(
                          width: 20,
                          height: 20,
                          child: IconButton(onPressed: ((){}),
                              icon: Icon(Icons.delete_forever_outlined, size: 20,),
                            padding: EdgeInsets.zero,
                          constraints: BoxConstraints(maxWidth: 20, maxHeight: 20),),
                        )
                      ],
                    ),
                 ),


              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 24, left: 24),
            child:  Divider(height: 1,),
          ),
          Container(
            margin: EdgeInsets.only(right: 24, left: 24),
            child:  Divider(height: 1,),
          ),
          Container(
            margin: EdgeInsets.only(right: 24, left: 24, bottom: 0),
            //decoration:
            // BoxDecoration(
            //   border: Border.all(),
            // ),

            child: Row(
              children: [

                Container(
                  width: 64,
                  height: 62,
                  decoration: BoxDecoration(
                    color: MyColors.greenNormal,
                    shape: BoxShape.rectangle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text("Projeto 2"),
                ),
                Spacer(),
                Container(
                  alignment: Alignment.centerRight ,
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        child: IconButton(onPressed: ((){}),
                            icon: Icon(Icons.edit_outlined, size: 20,),
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(maxWidth: 20, maxHeight: 20)
                        ),
                      ),
                      SizedBox(height: 16,),
                      Container(
                        width: 20,
                        height: 20,
                        child: IconButton(onPressed: ((){}),
                          icon: Icon(Icons.delete_forever_outlined, size: 20,),
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(maxWidth: 20, maxHeight: 20),),
                      )
                    ],
                  ),
                ),


              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 24, left: 24),
            child:  Divider(height: 1,),
          ),



        ],
      ),
    );
  }

}