import 'package:flutter/material.dart';
import 'package:portafolio/Core/Provider/UtilsProvider.dart';
import 'package:portafolio/Utils/UtilsDesign.dart';
import 'package:portafolio/Widgets/ButtonText.dart';
import 'package:portafolio/Widgets/CustomDivider.dart';
import 'package:portafolio/Widgets/ImageHover.dart';
import 'package:provider/provider.dart';

class LeftBanner extends StatefulWidget {
  final Function ontap;

  const LeftBanner({Key key, this.ontap}) : super(key: key);
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
    Size size = MediaQuery.of(context).size;
    // print(size.width);
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
          Text('Mobile app developer'),
          SizedBox(height: 15),
          if ((size.width < 950))
            Material(
              child: InkWell(
                onTap: this.widget.ontap,
                child: Container(
                  width: double.infinity,
                  child: Icon(
                    Icons.close,
                    size: 18,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          SizedBox(height: 5),
          CustomDivider(
            color: utilsProvider.primaryColor,
          ),
          SizedBox(height: 15),
          ButtenText(
            text: "ACERCA DE MI",
            ontap: () {
              utilsProvider.indexPage = IndexPage.About;
              callCallaback();
              // return this.widget.ontap;
              setState(() {});
            },
            status: utilsProvider.indexPage == IndexPage.About,
          ),
          ButtenText(
            text: "HABILIDADES",
            ontap: () {
              utilsProvider.indexPage = IndexPage.Skills;
              callCallaback();
              setState(() {});
            },
            status: utilsProvider.indexPage == IndexPage.Skills,
          ),
          ButtenText(
            text: "PROYECTOS",
            ontap: () {
              utilsProvider.indexPage = IndexPage.Projects;
              callCallaback();
              setState(() {});
            },
            status: utilsProvider.indexPage == IndexPage.Projects,
          ),
          ButtenText(
            text: "CONTACTO",
            ontap: () {
              utilsProvider.indexPage = IndexPage.Contact;
              callCallaback();
              setState(() {});
            },
            status: utilsProvider.indexPage == IndexPage.Contact,
          ),
          SizedBox(height: 15),
          CustomDivider(color: utilsProvider.primaryColor),
          Expanded(child: Container()),
          _socialNetwork(),
        ],
      ),
    );
  }

  void callCallaback() {
    this.widget.ontap();
  }

  Widget _socialNetwork() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _imageSocial('assets/IconsSocialNetwork/whatsapp.png', () {
          launchURL('https://api.whatsapp.com/send?phone=59165537461');
        }),
        _imageSocial('assets/IconsSocialNetwork/facebook.png', () {
          launchURL('https://www.facebook.com/alejandro.mancilla.125/');
        }),
        _imageSocial('assets/IconsSocialNetwork/instagram.png', () {
          launchURL('https://www.instagram.com/ale_mancilla__/');
        }),
        _imageSocial('assets/IconsSocialNetwork/github.png', () {
          launchURL('https://github.com/AleMancilla');
        }),
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
