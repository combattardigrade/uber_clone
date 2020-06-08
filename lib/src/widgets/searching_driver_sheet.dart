import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SearchingDriverSheet extends StatefulWidget {
  @override
  _SearchingDriverSheet createState() => new _SearchingDriverSheet();
}

class _SearchingDriverSheet extends State<SearchingDriverSheet> {
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
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40.0, bottom: 20.0),
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('assets/loading.png'),
              height: 70.0,
            ),
          ),
          Container(
            child: Text(
              'Buscando conductor cercano',
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xff6E6E6E),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 40.0),
            child: Text(
              'Tu viaje comenzará pronto',
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xff6E6E6E),
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
