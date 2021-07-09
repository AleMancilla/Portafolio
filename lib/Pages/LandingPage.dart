import 'package:flutter/material.dart';
import 'package:portafolio/Pages/BoddyPage.dart';
import 'package:portafolio/Pages/LeftBanner.dart';
import 'package:portafolio/Utils/UtilsDesign.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backGroundBoddyColor,
      body: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 15, color: Colors.black38, offset: Offset(-7, 10))
        ]),
        margin: (size.width < 950)
            ? EdgeInsets.symmetric(horizontal: 30, vertical: 40)
            : EdgeInsets.symmetric(horizontal: 150, vertical: 80),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: LeftBanner(),
            ),
            if (size.width > 950)
              Expanded(
                flex: 5,
                child: BoddyPage(),
              ),
          ],
        ),
      ),
    );
  }
}
