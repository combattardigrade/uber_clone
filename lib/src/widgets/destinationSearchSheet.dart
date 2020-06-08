import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DestinationSearchSheet extends StatefulWidget {
  @override
  _DestinationSearchSheet createState() => new _DestinationSearchSheet();
}

class _DestinationSearchSheet extends State<DestinationSearchSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 35, left: 35.0, bottom: 20.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Viajes •',
                    style: TextStyle(fontSize: 18, color: Color(0xff6E6E6E)),
                  ),
                  Text(
                    ' Ellas',
                    style: TextStyle(fontSize: 18, color: Color(0xffE84388)),
                  ),
                ],
              )),
          Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                left: 18.0,
                right: 18.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(
                    color: Color(0xffF2F2F2),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(
                    color: Color(0xffF2F2F2),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(
                    color: Color(0xffF2F2F2),
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(
                    color: Color(0xff44C3D4), fontWeight: FontWeight.w500),
                hintText: "¿A dónde vas?",
                fillColor: Color(0xffF2F2F2),
                prefixIcon: Icon(
                  Icons.pin_drop,
                  color: Color(0xff44C3D4),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.home,
                          color: Color(0xff6E6E6E),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Casa',
                          style: TextStyle(
                              color: Color(0xff6E6E6E), fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.work,
                          color: Color(0xff6E6E6E),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Trabajo',
                          style: TextStyle(
                              color: Color(0xff6E6E6E), fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.local_cafe,
                          color: Color(0xff6E6E6E),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Cafetería',
                          style: TextStyle(
                              color: Color(0xff6E6E6E), fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
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
