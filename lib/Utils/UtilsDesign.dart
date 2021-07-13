import 'package:flutter/material.dart';

const Color backGroundBoddyColor = Color.fromRGBO(30, 184, 210, 1.0);

const TextStyle textNameBold = TextStyle(fontWeight: FontWeight.bold);
const TextStyle textTitleBoddy = TextStyle(fontWeight: FontWeight.w600);
const TextStyle textContactTitle = TextStyle(fontWeight: FontWeight.w600);
const TextStyle textContactSubTitle =
    TextStyle(fontWeight: FontWeight.w500, color: Colors.grey);
const TextStyle textTitleSkill =
    TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 17);

BorderRadiusGeometry borderRadiusGlobal = BorderRadius.circular(5);

enum IndexPage {
  About,
  Skills,
  Projects,
  Contact,
}
