import 'package:flutter/material.dart';

class ServiceTutorialDialog extends StatefulWidget {
  @override
  ServiceTutorialDialog({Key key}) : super(key: key);
  _ServiceTutorialDialog createState() => _ServiceTutorialDialog();
}

class _ServiceTutorialDialog extends State<ServiceTutorialDialog> {
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0))),
      title: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Elige primero el servicio que te interesa',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(
            0xff40C6D1,
          )),
        ),
      ),
      content: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 0, bottom: 10),
            child: Row(
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.check_circle,
                    color: Color(0xffEB2F6C),
                    size: 15,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text('Viajes',
                      style: TextStyle(color: Color(0xff6E6E6E))),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.check_circle,
                    color: Color(0xffFFC133),
                    size: 15,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text('Mano de Obra Calificada',
                      style: TextStyle(color: Color(0xff6E6E6E))),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.check_circle,
                    color: Color(0xff40C6D1),
                    size: 15,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text('Mano de Obra Espacializada',
                      style: TextStyle(color: Color(0xff6E6E6E))),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.check_circle,
                    color: Color(0xffEB2F6C),
                    size: 15,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text('Servicios Domésticos',
                      style: TextStyle(color: Color(0xff6E6E6E))),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.check_circle,
                    color: Color(0xffFFC133),
                    size: 15,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text('Asistencia Social',
                      style: TextStyle(color: Color(0xff6E6E6E))),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
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
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                },
                child: Text(
                  'Entendido',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
