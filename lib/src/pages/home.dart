import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:uber/src/widgets/home_menu_drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // _MainMap();
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  Completer<GoogleMapController> _mapController = Completer();
  LatLng _center = LatLng(19.39688,-99.1566862);

  void _setMapStyle(GoogleMapController controller) async {
    String value = await rootBundle.loadString('assets/map_style.json');    
    controller.setMapStyle(value);
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
              initialCameraPosition:   CameraPosition(
                target: _center,
                zoom: 15.0
              ),
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
                )),
          ],
        ));
  }
}
