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