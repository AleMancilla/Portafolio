import 'package:flutter/material.dart';
import 'package:portafolio/Widgets/CardContactMe.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.orange,
      child: Scrollbar(
        isAlwaysShown: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _cardContact('assets/socialIcons/facebook.png', 'Facebook',
                  '@alejandro.mancilla.125', () {
                //https://www.facebook.com/alejandro.mancilla.125/
              }),
              _cardContact(
                  'assets/socialIcons/github.png', 'GitHub', '@AleMancilla',
                  () {
                //https://github.com/AleMancilla
              }),
              _cardContact('assets/socialIcons/gitlab.png', 'GitLab',
                  '@alejandro.mancilla.umsa', () {
                //https://gitlab.com/alejandro.mancilla.umsa
              }),
              _cardContact('assets/socialIcons/gmail.png', 'Gmail',
                  'alejandro.mancilla.umsa@gmail.com', () {
                //alejandro.mancilla.umsa@gmail.com
              }),
              _cardContact('assets/socialIcons/instagram.png', 'Instagram',
                  '@ale_mancilla__', () {
                //https://www.instagram.com/ale_mancilla__/
              }),
              _cardContact('assets/socialIcons/whatsapp.png', 'WhatsApp',
                  '+591 65537461', () {
                //https://api.whatsapp.com/send?phone=59165537461
              }),
              _cardContact('assets/socialIcons/youtube.png', 'Youtube',
                  '@AlexanderTutoriales', () {
                //https://www.youtube.com/user/AlexanderTutoriales/videos
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardContact(
      String image, String title, String subtitle, Function ontap) {
    return CardContactMe(
      image: image,
      title: title,
      subTitle: subtitle,
      ontap: ontap,
    );
  }
}
