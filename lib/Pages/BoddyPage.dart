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
  final Function ontap;

  const BoddyPage({Key key, this.ontap}) : super(key: key);
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
    Size size = MediaQuery.of(context).size;
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
                if (size.width < 950)
                  Material(
                    child: IconButton(
                        icon: Icon(
                          Icons.list,
                          color: utilsProvider.primaryColor,
                        ),
                        onPressed: this.widget.ontap),
                  ),
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
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Container(
                            width: 200,
                            // color: Colors.blue,
                            child: Wrap(
                              children: [
                                _itemColor(Color.fromRGBO(211, 9, 21, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(211, 9, 21, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(195, 25, 99, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(195, 25, 99, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(169, 38, 251, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(169, 38, 251, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(98, 33, 230, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(98, 33, 230, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(52, 87, 250, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(52, 87, 250, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(46, 104, 251, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(46, 104, 251, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(24, 147, 231, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(24, 147, 231, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(30, 184, 210, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(30, 184, 210, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(30, 190, 165, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(30, 190, 165, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(30, 199, 89, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(30, 199, 89, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(105, 219, 48, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(105, 219, 48, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(176, 232, 46, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(176, 232, 46, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(254, 213, 48, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(254, 213, 48, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(253, 170, 41, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(253, 170, 41, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(253, 109, 33, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(253, 109, 33, 1);
                                  Navigator.pop(context);
                                }),
                                _itemColor(Color.fromRGBO(219, 46, 23, 1), () {
                                  utilsProvider.primaryColor =
                                      Color.fromRGBO(219, 46, 23, 1);
                                  Navigator.pop(context);
                                }),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(child: _body()),
        ],
      ),
    );
  }

  Widget _itemColor(Color color, Function ontap) {
    return Material(
      child: InkWell(
        onTap: ontap,
        child: Container(
          width: 30,
          height: 30,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: color,
          ),
        ),
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
        return 'CONTACTO';
        break;
      case IndexPage.Projects:
        return 'PROYECTOS';
        break;
      case IndexPage.Skills:
        return 'HABILIDADES';
        break;
      default:
        return 'ACERCA DE MI';
    }
  }
}
