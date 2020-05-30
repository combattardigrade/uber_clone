import 'package:flutter/material.dart';

class CancelRideDialog extends StatefulWidget {
  @override
  CancelRideDialog({Key key}) : super(key: key);
  _CancelRideDialog createState() => _CancelRideDialog();
}

class _CancelRideDialog extends State<CancelRideDialog> {
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0))),
      title: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0, bottom: 0.0),
        child: Icon(Icons.warning, color: Color(0xffFCC753), size: 80.0,)
      ),
      content: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 0, bottom: 10),
            child: Text(
              '¿Estás seguro de cancelar tu viaje?',
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
                  'Cancelar',
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
