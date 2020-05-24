import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreen createState() => new _IntroScreen();
}

class _IntroScreen extends State<IntroScreen> {
  List<Slide> slides = new List();

  Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Solicita un viaje",
        styleTitle: TextStyle(
          color: Color(0xff44C3D4),
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
        description:
            "Serás recogido por el conductor más cercano a tu ubicación.",
        styleDescription: TextStyle(
          color: Color(0xff6E6E6E),
          fontSize: 14.0,
        ),
        pathImage: "assets/intro1.png",
        widthImage: 200.0,
        heightImage: 200.0,
        backgroundImage: 'assets/bg2.png',
        backgroundImageFit: BoxFit.cover,
      ),
    );
    slides.add(
      new Slide(
        title: "Confirma",
        styleTitle: TextStyle(
          color: Color(0xff44C3D4),
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
        description:
            "Serás recogido por el conductor más cercano a tu ubicación.",
        styleDescription: TextStyle(
          color: Color(0xff6E6E6E),
          fontSize: 14.0,
        ),
        pathImage: "assets/intro2.png",
        widthImage: 200.0,
        heightImage: 200.0,
        backgroundImage: 'assets/bg3.png',
        backgroundImageFit: BoxFit.cover,
      ),
    );
    slides.add(
      new Slide(
        title: "Rastrea tu viaje",
        styleTitle: TextStyle(
          color: Color(0xff44C3D4),
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
        description:
            "Ve en tiempo real.",
        styleDescription: TextStyle(
          color: Color(0xff6E6E6E),
          fontSize: 14.0,
        ),
        pathImage: "assets/intro3.png",
        widthImage: 200.0,
        heightImage: 200.0,
        backgroundImage: 'assets/bg4.png',
        backgroundImageFit: BoxFit.cover,
      ),
    );
  }

  void onDonePress() {
    // Back to the first tab
    this.goToTab(0);
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xffffcc5c),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffffcc5c),
    );
  }

  Widget renderSkipBtn() {
    return Text(
      'Saltar'
    );
    // return Icon(
    //   Icons.skip_next,
    //   color: Color(0xffffcc5c),
    // );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 0.0, top: 0.0),
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              Container(
                child: AspectRatio(
                  aspectRatio: 2,
                  child: Image(
                    image: AssetImage(
                      currentSlide.backgroundImage,
                    ),
                    fit: currentSlide.backgroundImageFit,
                  ),
                ),
              ),
              GestureDetector(
                  child: Image.asset(
                currentSlide.pathImage,
                width: currentSlide.widthImage,
                height: currentSlide.heightImage,
                fit: BoxFit.contain,
              )),
              Container(
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(top: 30.0),
              ),
              Container(             
               
                child: Text(
                  currentSlide.description,
                  style: currentSlide.styleDescription,
                  textAlign: TextAlign.center,                
                  
                ),
                margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Color(0x33ffcc5c),
      highlightColorSkipBtn: Color(0xffffcc5c),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33ffcc5c),
      highlightColorDoneBtn: Color(0xffffcc5c),

      // Dot indicator
      colorDot: Color(0xff44C3D4),
      sizeDot: 13.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Colors.white,
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },

      // Show or hide status bar
      shouldHideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }
}
