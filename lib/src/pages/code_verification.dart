import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/gestures.dart';

class CodeVerificationPage extends StatefulWidget {
  @override
  CodeVerificationPage({Key key}) : super(key: key);
  // final String phoneNumber;
  // CodeVerificationPage(this.phoneNumber);
  _CodeVerificationPage createState() => _CodeVerificationPage();
}

class _CodeVerificationPage extends State<CodeVerificationPage> {
  var onTapRecognizer;

  TextEditingController textEditingController = TextEditingController()
    ..text = "123456";

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
                    child: Text('¿Cuál es el código?',
                        style: TextStyle(
                            fontSize: 28,
                            color: Color(0xffEB2E6C),
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
                      'Escribe aquí el código enviado al',
                      style:
                          TextStyle(fontSize: 16.0, color: Color(0xff6E6E6E)),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
              Row(children: <Widget>[
                Container(
                  child: Text(
                    '+52 642 113 3994',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xffEB2E6C),
                        fontWeight: FontWeight.w500),
                  ),
                )
              ]),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 8.0),
                  child: PinCodeTextField(
                    textStyle: TextStyle(color: Color(0xff6E6E6E), fontSize: 36.0),
                    length: 6,
                    obsecureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.underline,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeColor: Color(0xffEB2E6C),
                      selectedColor: Colors.cyan,
                      inactiveColor: Color(0xffAAAAAA),
                      activeFillColor: Colors.transparent,
                      inactiveFillColor: Colors.transparent,
                      selectedFillColor: Colors.transparent,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    
                    enableActiveFill: true,
                    // errorAnimationController: errorController,
                    controller: textEditingController,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  )),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_forward),
        backgroundColor: Color(0xffEB2E6C),
      ),
    );
  }
}
