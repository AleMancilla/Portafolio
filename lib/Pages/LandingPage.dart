import 'package:flutter/material.dart';
import 'package:portafolio/Core/Provider/UtilsProvider.dart';
import 'package:portafolio/Pages/BoddyPage.dart';
import 'package:portafolio/Pages/LeftBanner.dart';
import 'package:portafolio/Utils/UtilsDesign.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final double marginHorizontal = 170;
  final double marginVertical = 80;
  final double minmarginHorizontal = 30;
  final double minmarginVertical = 40;

  bool statusContract = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    UtilsProvider utilsProvider = Provider.of<UtilsProvider>(context);
    if (size.width >= 950) {
      statusContract = true;
    }
    return Scaffold(
      backgroundColor: utilsProvider.primaryColor,
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   utilsProvider.primaryColor = Colors.red;
      // }),
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
            ? EdgeInsets.symmetric(
                horizontal: minmarginHorizontal, vertical: minmarginVertical)
            : EdgeInsets.symmetric(
                horizontal: marginHorizontal, vertical: marginVertical),
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
                    child: Container(),
                  ),
              ],
            ),
            if (size.width >= 950)
              Positioned(
                right: 0,
                child: Container(
                  // color: Colors.yellow,
                  height: size.height - (marginVertical * 2),
                  width: (size.width * 0.78) - (marginHorizontal * 2),
                  child: BoddyPage(),
                ),
              ),
            if (size.width < 950 && !statusContract)
              Positioned(
                right: 0,
                child: Container(
                  // color: Colors.yellow,
                  height: size.height - (minmarginVertical * 2),
                  width: (size.width) - (minmarginHorizontal * 2),
                  child: BoddyPage(ontap: () {
                    statusContract = true;
                    setState(() {});
                  }),
                ),
              ),
            if (statusContract)
              Positioned(
                left: 0,
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      offset: Offset(10, 0),
                    )
                  ]),
                  child: LeftBanner(
                    ontap: () {
                      statusContract = false;
                      // print('object');
                      setState(() {});
                    },
                  ),
                  height: (size.width > 950)
                      ? size.height - (marginVertical * 2)
                      : size.height - (minmarginVertical * 2),
                  width: (size.width < 950)
                      ? size.width * 0.85
                      : size.width * 0.22,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
