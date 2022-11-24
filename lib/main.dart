import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_map_flutter/controllers/map_controller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MapController mapController = Get.put(MapController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mapController.fetchLocations();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Obx(
        () => mapController.mapModel.isNotEmpty
            ? GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(mapController.mapModel.first.latitude,
                      mapController.mapModel.first.longitude),
                  zoom: 13,
                ),
                markers: mapController.markers,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      )),
    );
  }
}
