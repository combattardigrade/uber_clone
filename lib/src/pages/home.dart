import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  HomePage({Key key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Expanded(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/home_bg.png"),
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.dstATop),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            height: 120,
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            alignment: Alignment.center,
            height: 180.0,
            width: double.infinity,
            // color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            'Sign up with',
                            style: TextStyle(
                                fontSize: 24, color: Color(0xff44C3D4)),
                          ),
                        ),
                      ),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    facebookButon,
                    googleButon,
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 15.0, 0, 0),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: '¿Quieres ganar dinero? ',
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                            text: 'Abrir App Conductor',
                            style: TextStyle(color: Color(0xff44C3D4)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launch('https://google.com');
                              },
                          )
                        ]))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: RichText(
                          text: TextSpan(
                            text:
                                'Conoce los beneficios de ser Asociado Conductor',
                            style: TextStyle(color: Color(0xff44C3D4)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launch('https://google.com');
                              },
                          ),
                        ))
                  ],
                )
              ],
            )),
      ),
    ]));
  }
}
