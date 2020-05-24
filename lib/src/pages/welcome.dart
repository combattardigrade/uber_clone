import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomePage extends StatefulWidget {
  @override
  WelcomePage({Key key}) : super(key: key);
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget build(BuildContext context) {
    final facebookButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff2C599F),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width / 2.5,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/facebook_logo.png",
              fit: BoxFit.contain,
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Facebook",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
            )
          ],
        ),
      ),
    );

    final googleButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xffFFFFFF),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width / 2.5,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/google_logo.png",
              fit: BoxFit.contain,
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Google",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff868686)),
              ),
            )
          ],
        ),
      ),
    );

    return Scaffold(
        body: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Image(
              image: AssetImage('assets/bg1.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Image(
            image: AssetImage('assets/welcome_icon.png'),
            width: MediaQuery.of(context).size.width * 0.8,
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.22,
          child: Column(
            children: <Widget>[
              Text(
                '¡Listo!',
                style: TextStyle(
                    fontSize: 36,
                    color: Color(0xff44C3D4),
                    fontWeight: FontWeight.bold),
              ),
              Text('Bienvenido, Usuario',
                  style: TextStyle(fontSize: 24, color: Color(0xff757575))),
            ],
          ),
        ),
        Positioned(
            bottom: 40,
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xff44C3D4),
              child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width - 48,
                  padding: EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 15.0),
                  onPressed: () {},
                  child: Text('Comenzar',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 22))),
            ))
      ],
    ));
  }
}
