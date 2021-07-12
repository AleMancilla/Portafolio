import 'package:flutter/material.dart';
import 'package:portafolio/Core/Provider/UtilsProvider.dart';
import 'package:portafolio/Pages/BodyPages/About.dart';
import 'package:portafolio/Pages/BodyPages/Contact.dart';
import 'package:portafolio/Pages/BodyPages/Projects.dart';
import 'package:portafolio/Pages/BodyPages/Skills.dart';
import 'package:portafolio/Utils/UtilsDesign.dart';
import 'package:provider/provider.dart';

class BoddyPage extends StatefulWidget {
  @override
  _BoddyPageState createState() => _BoddyPageState();
}

class _BoddyPageState extends State<BoddyPage> {
  UtilsProvider utilsProvider;
  @override
  void initState() {
    utilsProvider = Provider.of<UtilsProvider>(context, listen: false);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    utilsProvider = Provider.of<UtilsProvider>(context, listen: true);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          color: Colors.transparent,
        ),
        Expanded(child: _body()),
      ],
    ));
  }

  Widget _body() {
    switch (utilsProvider.indexPage) {
      case IndexPage.About:
        return About();
        break;
      case IndexPage.Contact:
        return Contact();
        break;
      case IndexPage.Projects:
        return Projects();
        break;
      case IndexPage.Skills:
        return Skills();
        break;
      default:
        return About();
    }
  }
}
