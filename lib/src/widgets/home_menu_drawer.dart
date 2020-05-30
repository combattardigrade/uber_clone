import 'package:flutter/material.dart';

class HomeMenuDrawer extends StatefulWidget {
  HomeMenuDrawer({Key key}) : super(key: key);
  _HomeMenuDrawerState createState() => _HomeMenuDrawerState();
}

class _HomeMenuDrawerState extends State<HomeMenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/drawer_bg.png'),
                fit: BoxFit.fill,
              ),
            ),
            accountName: Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Usuario',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            accountEmail: Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                children: <Widget>[
                  Text('5.0'),
                  Icon(Icons.star, color: Colors.white, size: 12)
                ],
              ),
            ),
            currentAccountPicture: Container(
              padding: EdgeInsets.only(left: 10.0),
              child: CircleAvatar(
                child: Image.asset(
                  'assets/user_profile.png',
                  fit: BoxFit.fill,
                ),
              ),
            )),
        Column(
          children: <Widget>[
            linkMenuDrawer('Mi Perfil', Icons.person, () {
              Navigator.pushNamed(context, '/payment');
            }),
            linkMenuDrawer('Contactos S.O.S', Icons.warning, () {
              Navigator.pushNamed(context, '/payment');
            }),
            linkMenuDrawer('Mis Viajes', Icons.directions_car, () {
              Navigator.pushNamed(context, '/payment');
            }),
            linkMenuDrawer('Mis servicios', Icons.folder_open, () {
              Navigator.pushNamed(context, '/payment');
            }),
            linkMenuDrawer('Favoritos', Icons.star, () {
              Navigator.pushNamed(context, '/payment');
            }),
            linkMenuDrawer('Pagos', Icons.credit_card, () {
              Navigator.pushNamed(context, '/payment');
            }),
            linkMenuDrawer('Viajes gratis', Icons.local_offer, () {
              Navigator.pushNamed(context, '/payment');
            }),
            linkMenuDrawer('Soporte', Icons.settings, () {
              Navigator.pushNamed(context, '/payment');
            }),
            Divider(),
            Container(
              alignment: Alignment.bottomCenter,
              child: Material(
                elevation: 0.0,
                child: MaterialButton(
                  elevation: 0.0,
                  // minWidth: MediaQuery.of(context).size.width * 0.6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.cyan),
                  ),
                  color: Colors.white,
                  textColor: Colors.cyan,
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  onPressed: () {},
                  child: Text(
                    'Cambiar a conductor',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        )
      ],
    );
  }
}

Widget linkMenuDrawer(String title, var icon, Function onPressed) {
  return InkWell(
      onTap: onPressed,
      splashColor: Color(0xffEEFAFB),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(icon, color: Color(0xff707070), size: 24),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xff6E6E6E),
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ));
}
