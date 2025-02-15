import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
//import 'package:osm_flutter_hooks/osm_flutter_hooks.dart';

class SimpleHookExample extends StatefulWidget {
  const SimpleHookExample({super.key});

  @override
  State<SimpleHookExample> createState() => _SimpleExampleState();
}

class _SimpleExampleState extends State<SimpleHookExample> {
  late PageController controller;
  late int indexPage;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 1);
    indexPage = controller.initialPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("osm simple hook"),
      ),
      body: const SimpleOSM(),
    );
  }
}

class SimpleOSM extends HookWidget {
  const SimpleOSM({super.key});

  @override
  Widget build(BuildContext context) {
    /* final controller = useMapController(
        initPosition: GeoPoint(
      latitude: 47.4358055,
      longitude: 8.4737324,
    ));
    useMapIsReady(
      controller: controller,
      mapIsReady: () async {
        await controller.setZoom(zoomLevel: 15);
      },
    );*/
    return OSMFlutter(
      controller: MapController.withUserPosition(),
      osmOption: const OSMOption(),
    );
  }
}
