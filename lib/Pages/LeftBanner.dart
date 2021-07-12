import 'package:flutter/material.dart';
import 'package:portafolio/Core/Provider/UtilsProvider.dart';
import 'package:portafolio/Utils/UtilsDesign.dart';
import 'package:portafolio/Widgets/ButtonText.dart';
import 'package:portafolio/Widgets/CustomDivider.dart';
import 'package:portafolio/Widgets/ImageHover.dart';
import 'package:provider/provider.dart';

class LeftBanner extends StatefulWidget {
  @override
  _LeftBannerState createState() => _LeftBannerState();
}

class _LeftBannerState extends State<LeftBanner> {
  UtilsProvider utilsProvider;
  IndexPage indexPage = IndexPage.About;

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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadiusGlobal,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            width: 150,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: ImageHover(
                imageAsset: 'assets/images/perfilGrey.png',
              ),
            ),
          ),
          Text(
            'Alejandro Mancilla',
            style: textNameBold,
          ),
          Text('Ingeniero en Informática'),
          SizedBox(height: 20),
          CustomDivider(
            color: utilsProvider.primaryColor,
          ),
          SizedBox(height: 15),
          ButtenText(
            text: "ACERCA DE MI",
            ontap: () {
              utilsProvider.indexPage = IndexPage.About;
              setState(() {});
            },
            status: utilsProvider.indexPage == IndexPage.About,
          ),
          ButtenText(
            text: "HABILIDADES",
            ontap: () {
              utilsProvider.indexPage = IndexPage.Contact;
              setState(() {});
            },
            status: utilsProvider.indexPage == IndexPage.Contact,
          ),
          ButtenText(
            text: "PROYECTOS",
            ontap: () {
              utilsProvider.indexPage = IndexPage.Projects;
              setState(() {});
            },
            status: utilsProvider.indexPage == IndexPage.Projects,
          ),
          ButtenText(
            text: "CONTACTO",
            ontap: () {
              utilsProvider.indexPage = IndexPage.Skills;
              setState(() {});
            },
            status: utilsProvider.indexPage == IndexPage.Skills,
          ),
          SizedBox(height: 15),
          CustomDivider(color: utilsProvider.primaryColor),
          Expanded(child: Container()),
          _socialNetwork(),
        ],
      ),
    );
  }

  Widget _socialNetwork() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _imageSocial('assets/IconsSocialNetwork/whatsapp.png', () {}),
        _imageSocial('assets/IconsSocialNetwork/facebook.png', () {}),
        _imageSocial('assets/IconsSocialNetwork/instagram.png', () {}),
        _imageSocial('assets/IconsSocialNetwork/github.png', () {}),
      ],
    );
  }

  Widget _imageSocial(String image, Function ontap) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Material(
          child: InkWell(
            onTap: ontap,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                width: 20,
                height: 20,
                color: utilsProvider.primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
