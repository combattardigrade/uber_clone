import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class PhoneSignupPage extends StatefulWidget {
  @override
  PhoneSignupPage({Key key}) : super(key: key);
  _PhoneSignupPage createState() => _PhoneSignupPage();
}

class _PhoneSignupPage extends State<PhoneSignupPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xff6E6E6E)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          // title: Text(
          //   'Registro',
          //   style: TextStyle(color: Colors.black),
          // ),
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: Text('¿Cuál es tu número?',
                          style: TextStyle(
                              fontSize: 28,
                              color: Color(0xff44C3D4),
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        'Te enviaremos un mensaje con un código para verificar tu número',
                        style:
                            TextStyle(fontSize: 16.0, color: Color(0xff6E6E6E)),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.cyan,
                  ))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: CountryCodePicker(
                          onChanged: print,
                          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                          initialSelection: 'MX',
                          favorite: ['+52', 'MX'],
                          // optional. Shows only country name and flag
                          showCountryOnly: false,
                          // optional. Shows only country name and flag when popup is closed.
                          showOnlyCountryWhenClosed: false,
                          // optional. aligns the flag and the Text left
                          alignLeft: true,
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Número de Teléfono",
                          ),
                          onChanged: (value) {
                            // this.phoneNo=value;
                            print(value);
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
            ),
            floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.arrow_forward), backgroundColor: Colors.cyan,),
          );
  }
}
