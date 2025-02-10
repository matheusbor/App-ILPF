import 'package:app_ilpf/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

import '../widgets.dart';

void main(){
  runApp(MapScreen());
}

class MapScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Map(),
    );
  }

}

class Map extends StatefulWidget{
  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map>  with OSMMixinObserver {

  // or set manually init position
  final controller = MapController.withPosition(
      initPosition: GeoPoint(
        latitude: -21.1358056,
        longitude: -41.6604167,
      ));
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: MaterialNavigationBar(1),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: (){},
      // child: Icon(Icons.add),
      // backgroundColor: Colors.white,),
      body: Stack(
        children: [
          // OSMFlutter(controller: controller,
          //     osmOption: OSMOption(
          //       userTrackingOption: UserTrackingOption(
          //         enableTracking: true,
          //         //unFollowUser: false,
          //       )
          //     ),
          // ),
      Expanded(
        child: OSMFlutter(
          controller: controller,
          // mapIsLoading: Center(
          //   child: CircularProgressIndicator(),
          // ),
          onLocationChanged: (location) {
            debugPrint(location.toString());
          },
          osmOption: OSMOption(
            enableRotationByGesture: true,
            zoomOption: const ZoomOption(
              initZoom: 16,
              minZoomLevel: 3,
              maxZoomLevel: 19,
              stepZoom: 1.0,
            ),
            userLocationMarker: UserLocationMaker(
                personMarker: MarkerIcon(
                  // icon: Icon(
                  //   Icons.car_crash_sharp,
                  //   color: Colors.red,
                  //   size: 48,
                  // ),
                  // iconWidget: SizedBox.square(
                  //   dimension: 56,
                  //   child: Image.asset(
                  //     "asset/taxi.png",
                  //     scale: .3,
                  //   ),
                  // ),
                  iconWidget: SizedBox(
                    width: 32,
                    height: 64,
                    child: Image.asset(
                      "assetpackage/directionIcon.png",
                      scale: .3,
                    ),
                  ),
                  // assetMarker: AssetMarker(
                  //   image: AssetImage(
                  //     "asset/taxi.png",
                  //   ),
                  //   scaleAssetImage: 0.3,
                  // ),
                ),
                directionArrowMarker: const MarkerIcon(
                  icon: Icon(
                    Icons.navigation_rounded,
                    size: 48,
                  ),
                  // iconWidget: SizedBox(
                  //   width: 32,
                  //   height: 64,
                  //   child: Image.asset(
                  //     "asset/directionIcon.png",
                  //     scale: .3,
                  //   ),
                  // ),
                )
              // directionArrowMarker: MarkerIcon(
              //   assetMarker: AssetMarker(
              //     image: AssetImage(
              //       "asset/taxi.png",
              //     ),
              //     scaleAssetImage: 0.25,
              //   ),
              // ),
            ),
            staticPoints: [
              StaticPositionGeoPoint(
                "line 1",
                const MarkerIcon(
                  icon: Icon(
                    Icons.train,
                    color: Colors.green,
                    size: 32,
                  ),
                ),

                [
                  GeoPoint(
                    latitude: 47.4333594,
                    longitude: 8.4680184,
                  ),
                  GeoPoint(
                    latitude: 47.4317782,
                    longitude: 8.4716146,
                  ),
                ],
              ),


            ],
            roadConfiguration: const RoadOption(
              roadColor: Colors.blueAccent,
            ),
            showContributorBadgeForOSM: true,
            //trackMyPosition: trackingNotifier.value,
            showDefaultInfoWindow: false,
          ),
        ),
      ),
          showModalBottomSheet(
              context: context,
              builder: (context){
                return modalSheet();
              }),
          DraggableScrollableSheet(
              initialChildSize: 0.1, // Altura inicial do BottomSheet
              minChildSize: 0.1,     // Altura mínima
              maxChildSize: 0.6,     // Altura máxima ao expandir
              builder: (context, scrollController){
            return modalSheet();
          }
          ),
          Positioned(
            top: 24,
            left: (MediaQuery.of(context).size.width/2) -81.5,
            //right: (MediaQuery.of(context).size.width/2) + 81.5,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(left: 7, right: 15, ),

                child: Image.asset('app_assets/logo_menor.png')),
          ),
          Positioned( 
            top: (MediaQuery.of(context).size.height/4) * 3,
              right: 16,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                child: Icon(Icons.add),
                  onPressed: (){}
              ),
          ),














        ],
      ),
    );
  }

  @override
  Future<void> mapIsReady(bool isReady) {
    // TODO: implement mapIsReady
    throw UnimplementedError();
  }
}
