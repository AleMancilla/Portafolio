import 'package:flutter/material.dart';
import 'package:portafolio/Core/Provider/UtilsProvider.dart';
import 'package:portafolio/Pages/BodyPages/About.dart';
import 'package:portafolio/Pages/BodyPages/Contact.dart';
import 'package:portafolio/Pages/BodyPages/Projects.dart';
import 'package:portafolio/Pages/BodyPages/Skills.dart';
import 'package:portafolio/Utils/UtilsDesign.dart';
import 'package:portafolio/Widgets/CustomDivider.dart';
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
            padding: EdgeInsets.only(left: 15),
            height: 55,
            color: Colors.transparent,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          _titleBoddy(),
                          style: textTitleBoddy,
                        ),
                      ),
                    ),
                    CustomDivider(
                      width: 170,
                      color: utilsProvider.primaryColor,
                    ),
                  ],
                ),
                Expanded(
                  child: Container(),
                ),
                // IconButton(
                //   icon: Icon(Icons.share, color: utilsProvider.primaryColor),
                //   onPressed: () {},
                // ),
                IconButton(
                  icon: Icon(Icons.circle, color: utilsProvider.primaryColor),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Expanded(child: _body()),
        ],
      ),
    );
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

  String _titleBoddy() {
    switch (utilsProvider.indexPage) {
      case IndexPage.About:
        return 'ACERCA DE MI';
        break;
      case IndexPage.Contact:
        return 'HABILIDADES';
        break;
      case IndexPage.Projects:
        return 'PROYECTOS';
        break;
      case IndexPage.Skills:
        return 'CONTACTO';
        break;
      default:
        return 'ACERCA DE MI';
    }
  }
}
