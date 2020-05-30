import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:uber/src/widgets/home_menu_drawer.dart';
import 'package:uber/src/widgets/service_sheet.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:uber/src/widgets/serviceTutorialDialog.dart';
import 'package:uber/src/widgets/quickRideTutorialDialog.dart';
import 'package:uber/src/widgets/cancelRideDialog.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // _MainMap();
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  Completer<GoogleMapController> _mapController = Completer();
  LatLng _center = LatLng(19.39688, -99.1566862);

  void _setMapStyle(GoogleMapController controller) async {
    String value = await rootBundle.loadString('assets/map_style.json');
    controller.setMapStyle(value);
  }

  void _showServiceTutorialDialog() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => ServiceTutorialDialog(),
    );
  }

  void _showQuickRideTutorialDialog() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => QuickRideTutorialDialog(),
    );
  }

  void _cancelRideDialog() {
    showDialog(
      context: context,
      barrierDismissible:  true,
      builder:  (BuildContext context) => CancelRideDialog(),
    );
  }

  void _showServicesSheet() {
    showMaterialModalBottomSheet(
      context: context,
      expand: false,
      backgroundColor: Colors.transparent,
      builder: (context, scrollController) => Container(
        child: ServiceSheet(),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      bottomSheet: Container(
        height: 300,
        decoration: BoxDecoration(color: Colors.black),
        child: Column(),
      ),
      drawer: Drawer(
        child: HomeMenuDrawer(),
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(target: _center, zoom: 15.0),
            onMapCreated: (GoogleMapController controller) {
              _mapController.complete(controller);
              _setMapStyle(controller);
            },
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Column(
              children: <Widget>[
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  leading: FlatButton(
                      onPressed: () {
                        _scaffoldKey.currentState.openDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                      )),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          onPressed: _cancelRideDialog,
          child: Icon(Icons.arrow_forward),
          backgroundColor: Colors.cyan,
        ),
      ),
    );
  }
}
