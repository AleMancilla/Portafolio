import 'package:flutter/material.dart';
import 'package:portafolio/Core/Provider/UtilsProvider.dart';
import 'package:portafolio/Pages/BoddyPage.dart';
import 'package:portafolio/Pages/LeftBanner.dart';
import 'package:portafolio/Utils/UtilsDesign.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    UtilsProvider utilsProvider = Provider.of<UtilsProvider>(context);
    return Scaffold(
      backgroundColor: utilsProvider.primaryColor,
      floatingActionButton: FloatingActionButton(onPressed: () {
        utilsProvider.primaryColor = Colors.red;
      }),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: borderRadiusGlobal,
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              color: Colors.black38,
              offset: Offset(-7, 10),
            )
          ],
        ),
        margin: (size.width < 950)
            ? EdgeInsets.symmetric(horizontal: 30, vertical: 40)
            : EdgeInsets.symmetric(horizontal: 170, vertical: 80),
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                if (size.width > 950)
                  Expanded(
                    flex: 5,
                    child: BoddyPage(),
                  ),
              ],
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 15,
                  offset: Offset(10, 0),
                )
              ]),
              child: LeftBanner(),
              width: (size.width < 950) ? size.width * 0.9 : size.width * 0.22,
            ),
          ],
        ),
      ),
    );
  }
}
