import 'package:flutter/material.dart';
import 'package:portafolio/Widgets/ButtonText.dart';
import 'package:portafolio/Widgets/CustomDivider.dart';
import 'package:portafolio/Widgets/ImageHover.dart';

class LeftBanner extends StatefulWidget {
  @override
  _LeftBannerState createState() => _LeftBannerState();
}

class _LeftBannerState extends State<LeftBanner> {
  double elevation = 4.0;
  double scale = 1.0;
  Offset translate = Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 150,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: ImageHover(
                imageAsset: 'assets/images/perfilGrey.png',
              ),
            ),
          ),
          Text('Alejandro Mancilla'),
          Text('Ingeniero en Informática'),
          CustomDivider(),
          ButtenText(),
          ButtenText(),
          ButtenText(),
          CustomDivider(),
        ],
      ),
    );
  }
}
