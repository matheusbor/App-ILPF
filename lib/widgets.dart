import 'package:app_ilpf/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaterialNavigationBar extends StatefulWidget{
  int pageIndex;
  MaterialNavigationBar(pageIndex, {super.key}):
        pageIndex = pageIndex;
  @override
  State<MaterialNavigationBar> createState() => _MaterialNavigationBarState();
}

class _MaterialNavigationBarState extends State<MaterialNavigationBar> {
  late int currentPageIndex ;

  @override
  void initState(){
    super.initState();
    currentPageIndex = widget.pageIndex;
  }
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: MyColors.greenLight,
      indicatorColor: MyColors.greenLightActive,
      destinations: [
        NavigationDestination(icon: Icon(Icons.edit), label: "Cadastro"),
        NavigationDestination(icon: Icon(Icons.map_outlined), label: "Mapa"),
        NavigationDestination(icon: Icon(Icons.settings), label: "Configurações"),
      ],
      selectedIndex: currentPageIndex,
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
    );
  }
}

class CultureCard extends StatefulWidget{
  @override
  State<CultureCard> createState() => _CultureCardState();
}

class _CultureCardState extends State<CultureCard> {
  int copaNavigation = 0;
  String copaTitle = "Copa";


  @override
  Widget build(BuildContext context) {
    if (copaNavigation < 0){
      copaNavigation =5;
    }//bug: por que ele consegue voltar do 0 pro 5-porque não tinhasetstate no direito antes?
    if(copaNavigation >5){
      copaNavigation = 0;
    }
    switch(copaNavigation){
      case 0:
        copaTitle = "Copa Cilíndrica";
        break;
      case 1:
        copaTitle = "Copa Esférica";
        break;
      case 2:
        copaTitle = "Copa Lentiforme";
        break;
      case 3:
        copaTitle = "Copa Elíptica";
        break;
      case 4:
        copaTitle = "Copa Cilíndrica ";
        break;
      case 5:
        copaTitle = "Copa Esférica";
        break;
    }
    return Stack(
      children: [
        Positioned(
          top: 25,
          child: IconButton(onPressed: (){
            setState(() {
              copaNavigation -= 1;
            });
          },
              icon: Icon(Icons.chevron_left, color: Colors.black,)),
        ),
        Row(
            children:
            [

              SizedBox(width: 40,),
               Expanded(
                child: Card.outlined(

                  child: Container(
                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 17),
                    child: Column(
                      children: [
                        SizedBox(height: 29,),
                        Text(copaTitle,
                          style: Theme.of(context).textTheme.titleLarge,),
                        //Text("$copaNavigation"),
                        SizedBox(height: 36,),
                        Row(

                          children: [
                            Text("Área da sombra",
                              style: Theme.of(context).textTheme.labelLarge,),

                            Spacer(),
                            Text("m²",
                              style: Theme.of(context).textTheme.bodyMedium,),
                          ],
                        ),
                        Divider(height: 1,),
                        SizedBox(height: 19,),
                        Row(
                          children: [
                            Text("Largura da sombra",
                              style: Theme.of(context).textTheme.labelLarge,),
                            Spacer(),
                            Text("m",
                              style: Theme.of(context).textTheme.bodyMedium,),
                          ],
                        ),
                        Divider(height: 1,),
                        SizedBox(height: 17,),
                        Row(
                          children: [
                            Text("Comprimento da sombra",
                              style: Theme.of(context).textTheme.labelLarge,),
                            Spacer(),
                            Text("m",
                              style: Theme.of(context).textTheme.bodyMedium,),
                          ],
                        ),
                        Divider(height: 1,),
                        SizedBox(height: 17,),
                        Row(
                          children: [
                            Text("Deslocamento da sombra",
                              style: Theme.of(context).textTheme.labelLarge,),
                            Spacer(),
                            Text("m",
                              style: Theme.of(context).textTheme.bodyMedium,),
                          ],
                        ),
                        Divider(height: 1,),
                        SizedBox(height: 19,),
                        Row(
                          children: [
                            Text("Direção da sombra (azimute)",
                              style: Theme.of(context).textTheme.labelLarge,),
                            Spacer(),
                            Text("º",
                              style: Theme.of(context).textTheme.bodyMedium,),
                          ],
                        ),
                        Divider(height: 1,),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 40,),

            ]
        ),
        Positioned(
          right: 0,
          top: 25,
          child: IconButton(onPressed: (){
            setState(() {
              copaNavigation += 1;
          });

          },
              icon: Icon(Icons.chevron_right, color: Colors.black,)),
        ),
      ]
    );
  }
}

class  modalSheet extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(right: 24, left: 24),
      child: Column(
        children: [
          Text("Marque um ponto na tela para começar o cadastro",
          style: Theme.of(context).textTheme.titleLarge),

          SizedBox(height: 19,),
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
          Divider(height: 1,),
          Container(
            // decoration: BoxDecoration(
            //   border: Border.all(),
            // ),
            child: Row(
              children: [
                Image.asset("app_assets/marker.png"),
                SizedBox(width: 16,),
                Text("Ponto 2"),
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
    );
  }

}