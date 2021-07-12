import 'package:flutter/material.dart';
import 'package:portafolio/Widgets/ItemSkill.dart';
import 'package:portafolio/Widgets/TitleSkill.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blueAccent,
      child: Scrollbar(
        isAlwaysShown: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TitleSkill(
                image: 'assets/icons/programming.png',
                title: 'FRONTEND',
                subTitle: 'Cliente',
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/flutter.png',
                text: 'Flutter',
                porcentage: 90,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/dart.png',
                text: 'Dart',
                porcentage: 90,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/java.png',
                text: 'Java',
                porcentage: 80,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/python.png',
                text: 'Python',
                porcentage: 70,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/csharp.png',
                text: 'C#',
                porcentage: 40,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/react.png',
                text: 'React',
                porcentage: 20,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/javascript.png',
                text: 'Java script',
                porcentage: 20,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/css3.png',
                text: 'Css3',
                porcentage: 20,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/html5.png',
                text: 'Html5',
                porcentage: 20,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/Kotlin.png',
                text: 'Kotlin',
                porcentage: 20,
              ),
              TitleSkill(
                image: 'assets/icons/almacenamiento.png',
                title: 'BACKEND',
                subTitle: 'Servidor',
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/firebase.png',
                text: 'Firebase',
                porcentage: 90,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/mysql-logo.png',
                text: 'My sql',
                porcentage: 70,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/mongo-db-design.png',
                text: 'MongoDB',
                porcentage: 10,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/python.png',
                text: 'Python',
                porcentage: 30,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/java.png',
                text: 'Java',
                porcentage: 20,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/php.png',
                text: 'Php',
                porcentage: 20,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/node-js.png',
                text: 'Node.js',
                porcentage: 20,
              ),
              TitleSkill(
                image: 'assets/icons/ux.png',
                title: 'UI DESIGN',
                subTitle: 'Diseño para el usuario',
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/adobexd.png',
                text: 'AdobeXD',
                porcentage: 90,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/photoshop.png',
                text: 'Photoshop',
                porcentage: 90,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/figma.png',
                text: 'Figma',
                porcentage: 90,
              ),
              TitleSkill(
                image: 'assets/icons/ux.png',
                title: 'OTHERS',
                subTitle: 'Otras habilidades',
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/git.png',
                text: 'Git',
                porcentage: 90,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/github.png',
                text: 'GitHub',
                porcentage: 90,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/gitlab.png',
                text: 'GitLab',
                porcentage: 80,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/dialogflow.png',
                text: 'DialogFlow',
                porcentage: 70,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/arduino-logo.png',
                text: 'Arduino',
                porcentage: 90,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/c++.png',
                text: 'C++',
                porcentage: 60,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/csharp.png',
                text: 'C#',
                porcentage: 40,
              ),
              TitleSkill(
                image: 'assets/icons/translation.png',
                title: 'IDIOMAS',
                subTitle: 'Hablar, escribir y leer',
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/spanishlanguaje.png',
                text: 'Español/nativo',
                porcentage: 100,
              ),
              ItemSkill(
                image: 'assets/icons/iconsSkills/englishlanguaje.png',
                text: 'Ingles',
                porcentage: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
