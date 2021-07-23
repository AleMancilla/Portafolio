import 'package:flutter/material.dart';
import 'package:portafolio/Widgets/ImageHover.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: ImageHover(
                // imageAsset: 'assets/socialIcons/github.png',
                imageAsset: 'assets/images/perfilGrey.png',
              ),
            ),
          ),
          Expanded(
            child: Scrollbar(
              isAlwaysShown: true,
              // showTrackOnHover: true,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Text(
                      '''Hola, me llamo Alejandro Mancilla, soy estudiante de la Carrera de Informática cursando el 8.º semestre. Me encanta la programación, hacer aplicaciones / software para dispositivos móviles. Desde niño tuve un gran interés sobre las computadoras y celulares en cuanto el funcionamiento de las mismas y los programas que pueden ejecutarlos al igual que las vulnerabilidades.

Mis primeros comienzos fue a los 14 años con el software Photoshop CSS3 realizando diseños, edición de fotos y recreación de logos en una pequeña notebook el cual no soportaba juegos por lo cual me pasaba todo el día mejorando mis habilidades en diseño.

A los 16 estando en 4to de secundaria me propuse a hacer una aplicación "Cancionero Boliviano" totalmente completo con historia, sonido, vocabulario, imágenes, etc. Sin saber nada de programación me propuse a realizar dicha aplicación. Utilizando el software "AppInventor" tarde dos semanas en el desarrollo de la misma y una vez completo la compartí con mi grupo de amigos de colegio.

A los 17 aun más curioso sobre el mundo de la programación empece a tomar cursos de programación en C desarrollando programas sencillos como Calculadoras, Menús, formularios, etc.

A los 18 me decidí a hacer mi Servicio Militar en la Fuerza Aérea donde aprendí sobre Energías limpias más específico sobre Paneles Solares obteniendo un título de Técnico Básico en Manejo de Paneles Solares y al mismo tiempo tome un curso de reparación de celulares el cual me introdujo al manejo de Hardware, Terminando el Servicio militar aprendí el manejo de placas "Arduino" donde obtuve más conocimiento sobre el Hardware y Software.

En mi primer año de universidad quise aprender a hacer aplicaciones Android, pero no obtuve el apoyo que esperaba, así que siendo autodidacta aprendí lo suficiente para hacer un juego de cartas llamado "Nervioso" juego que compartí y jugué con amigos de la carrera. 

En mi segundo año de Universidad tuve la oportunidad de profundizar mis conocimientos de Arduino y luego de mucha práctica empezó a dar clases a estudiantes nuevos sobre Robótica con Arduino e Internet de las cosas.

En mi tercer año de universidad algunos amigos me comentaban sobre un framework nuevo que estaba surgiendo para el desarrollo de aplicaciones Android/Ios, el framework era llamado "Flutter" que aún estaba en desarrollo, y cuando empece a aprenderlo vi el gran potencial que tenía así que todo el año 2020 me dedique enteramente a mejorar mis habilidades en el desarrollo de aplicaciones Móviles y Web con Flutter.

Este año 2021 espero seguir mejorando mis habilidades en el desarrollo de aplicaciones y terminar de aprender el desarrollo de páginas web con React.
'''),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
