import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaterialNavigationBar extends StatefulWidget{
  @override
  State<MaterialNavigationBar> createState() => _MaterialNavigationBarState();
}

class _MaterialNavigationBarState extends State<MaterialNavigationBar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
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