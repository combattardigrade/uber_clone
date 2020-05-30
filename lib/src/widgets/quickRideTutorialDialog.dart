import 'package:flutter/material.dart';

class QuickRideTutorialDialog extends StatefulWidget {
  @override
  QuickRideTutorialDialog({Key key}) : super(key: key);
  _QuickRideTutorialDialog createState() => _QuickRideTutorialDialog();
}

class _QuickRideTutorialDialog extends State<QuickRideTutorialDialog> {
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0))),
      title: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        child: Text(
          '¿Estás apurado y no tienes timepo de seleccionar tu destino?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(
              0xffFFC133,
            ),
          ),
        ),
      ),
      content: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 0, bottom: 10),
            child: Text(
              'En este botón podrás solicitar un viaje rápido, no necesitas poner tu destino. Puedes decirle al conductor tu destino después.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(
                  0xff6E6E6E,
                ),
              ),
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
