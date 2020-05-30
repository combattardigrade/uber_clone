import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ServiceSheet extends StatefulWidget {
  @override
  _ServiceSheetState createState() => new _ServiceSheetState();
}

class _ServiceSheetState extends State<ServiceSheet>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(40.0),
          topRight: const Radius.circular(40.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Text(
              'Hola, Usuario',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6E6E6E)),
            ),
          ),
          Container(
            // margin: EdgeInsets.only(top: 30),
            child: Text(
              '¿Qué servicio necesitas?',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6E6E6E)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            width: MediaQuery.of(context).size.width,
            // decoration: BoxDecoration(color: Colors.red),

            child: TabBar(
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              controller: _tabController,
              indicatorColor: Colors.cyan,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(color: Color(0xffB3B3B3)),
              labelColor: Color(0xff6E6E6E),
              tabs: <Widget>[
                Tab(text: 'Viajes'),
                Tab(text: 'Mano de Obra Calificada'),
                Tab(text: 'Servicios Domésticos')
              ],
            ),
          ),
          Divider(),
          Container(
            height: 200.0,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Container(
                  // color: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                  child: ListView(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    children: <Widget>[
                      Container(
                        child: LayoutBuilder(builder: (context, constraints) {
                          return vehicleServiceItem(
                              context,
                              constraints,
                              'Compacto',
                              'Espacio Reducido',
                              'assets/vehicle_default.png',
                              '1');
                        }),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Latitude: 48.09342\nLongitude: 11.23403'),
                    trailing: IconButton(
                        icon: Icon(Icons.my_location), onPressed: () {}),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Latitude: 48.09342\nLongitude: 11.23403'),
                    trailing: IconButton(
                        icon: Icon(Icons.my_location), onPressed: () {}),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,                  
                  
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        child: Image.asset('assets/visa_logo.png', fit: BoxFit.fill),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text('**** 4027', style: TextStyle(fontSize:16.0, color: Color(0xff6E6E6E))),
                      ),
                      Container(
                        child: Icon(Icons.keyboard_arrow_down, color: Color(0xff6E6E6E),),
                      ),
                    ],
                  )
                ),
                Container(
                  child: Icon(Icons.calendar_today, color: Color(0xff6E6E6E)),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Material(
              elevation: 0.0,
              child: MaterialButton(
                elevation: 0.0,
                minWidth: MediaQuery.of(context).size.width - 32,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.cyan),
                ),
                color: Colors.cyan,
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                onPressed: () {},
                child: Text(
                  'Confirmar Servicio',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget vehicleServiceItem(var context, var constraints, String title,
    String description, String image, String capacity) {
  double maxWidth = (constraints.maxWidth - 18);
  return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.cyan),
          borderRadius: BorderRadius.circular(18.0)),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: maxWidth * 0.25,
            child: Image.asset(image, fit: BoxFit.fill),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            width: maxWidth * 0.50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 12.0),
                ),
              ],
            ),
          ),
          Container(
            width: maxWidth * 0.25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Icon(Icons.person),
                ),
                Container(
                  child: Text(capacity),
                ),
              ],
            ),
          ),
        ],
      ));
}
