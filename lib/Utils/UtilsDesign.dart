import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const Color backGroundBoddyColor = Color.fromRGBO(30, 184, 210, 1.0);

const TextStyle textNameBold = TextStyle(fontWeight: FontWeight.bold);
const TextStyle textTitleBoddy = TextStyle(fontWeight: FontWeight.w600);
const TextStyle textContactTitle = TextStyle(fontWeight: FontWeight.w600);
const TextStyle textContactSubTitle =
    TextStyle(fontWeight: FontWeight.w500, color: Colors.grey);
const TextStyle textTitleSkill =
    TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 17);

const TextStyle textTitleCardProyect = TextStyle(fontWeight: FontWeight.w600);
TextStyle textdescription =
    TextStyle(fontWeight: FontWeight.w400, color: Colors.grey[800]);
const TextStyle textTecnologies =
    TextStyle(fontWeight: FontWeight.w600, color: Colors.grey);

BorderRadiusGeometry borderRadiusGlobal = BorderRadius.circular(5);

enum IndexPage {
  About,
  Skills,
  Projects,
  Contact,
}

void launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
