import 'package:flutter/material.dart';
import 'package:portafolio/Widgets/CardProyect.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      child: Scrollbar(
        isAlwaysShown: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardProyect(
                listaImages: [
                  'assets/proyects/guimyApp/guimy1.png',
                  'assets/proyects/guimyApp/guimy2.png',
                  'assets/proyects/guimyApp/guimy3.png',
                  'assets/proyects/guimyApp/guimy4.png',
                  'assets/proyects/guimyApp/guimy5.png',
                  'assets/proyects/guimyApp/guimy6.png',
                  'assets/proyects/guimyApp/guimy7.png',
                  'assets/proyects/guimyApp/guimy8.png',
                  'assets/proyects/guimyApp/guimy9.png',
                  'assets/proyects/guimyApp/guimy10.png',
                  'assets/proyects/guimyApp/guimy11.png',
                  'assets/proyects/guimyApp/guimy12.png',
                ],
                title: 'GuimyApp',
                description: 'Aplicacion de delivery',
                tecnologies: [
                  'Flutter',
                  'GraphQL',
                  'GoogleMaps',
                ],
              ),
              CardProyect(
                listaImages: [
                  'assets/proyects/CopaAmerica2021/1.jpeg',
                  'assets/proyects/CopaAmerica2021/2.jpeg',
                  'assets/proyects/CopaAmerica2021/3.jpeg',
                  'assets/proyects/CopaAmerica2021/4.jpeg',
                  'assets/proyects/CopaAmerica2021/5.jpeg',
                  'assets/proyects/CopaAmerica2021/6.jpeg',
                  'assets/proyects/CopaAmerica2021/7.jpeg',
                  'assets/proyects/CopaAmerica2021/8.jpeg',
                  'assets/proyects/CopaAmerica2021/9.jpeg',
                  'assets/proyects/CopaAmerica2021/10.jpeg',
                  'assets/proyects/CopaAmerica2021/11.jpeg',
                ],
                title: 'Copa America 2021',
                description:
                    'Aplicacion de seguimiento de los partidos de la copa america',
                tecnologies: [
                  'Flutter',
                  'Firebase',
                ],
              ),
              CardProyect(
                listaImages: [
                  'assets/proyects/ElChaskiCRM/1.jpeg',
                  'assets/proyects/ElChaskiCRM/2.jpeg',
                  'assets/proyects/ElChaskiCRM/3.jpeg',
                  'assets/proyects/ElChaskiCRM/4.jpeg',
                  'assets/proyects/ElChaskiCRM/5.jpeg',
                  'assets/proyects/ElChaskiCRM/6.jpeg',
                  'assets/proyects/ElChaskiCRM/7.jpeg',
                  'assets/proyects/ElChaskiCRM/8.jpeg',
                  'assets/proyects/ElChaskiCRM/9.jpeg',
                  'assets/proyects/ElChaskiCRM/10.jpeg',
                  'assets/proyects/ElChaskiCRM/11.jpeg',
                  'assets/proyects/ElChaskiCRM/12.jpeg',
                  'assets/proyects/ElChaskiCRM/13.jpeg',
                  'assets/proyects/ElChaskiCRM/14.jpeg',
                ],
                title: 'El Chaski CRM',
                description:
                    'Aplicacion de administracion para todos los servicios de El Chaski Delivery',
                tecnologies: [
                  'Flutter',
                  'Firebase',
                  'GoogleMaps',
                ],
              ),
              CardProyect(
                listaImages: [
                  'assets/proyects/ElChaskiDelivery/1.jpeg',
                  'assets/proyects/ElChaskiDelivery/2.jpeg',
                  'assets/proyects/ElChaskiDelivery/3.jpeg',
                  'assets/proyects/ElChaskiDelivery/4.jpeg',
                  'assets/proyects/ElChaskiDelivery/5.jpeg',
                  'assets/proyects/ElChaskiDelivery/6.jpeg',
                  'assets/proyects/ElChaskiDelivery/7.jpeg',
                  'assets/proyects/ElChaskiDelivery/8.jpeg',
                  'assets/proyects/ElChaskiDelivery/9.jpeg',
                  'assets/proyects/ElChaskiDelivery/10.jpeg',
                  'assets/proyects/ElChaskiDelivery/11.jpeg',
                  'assets/proyects/ElChaskiDelivery/12.jpeg',
                ],
                title: 'El Chaski Delivery',
                description:
                    'Aplicacion de delivery enfocado a negocios tradicionales para la ciudad del Alto',
                tecnologies: [
                  'Flutter',
                  'Firebase',
                  'GoogleMaps',
                  'Geolocalizacion',
                  'Google Matrix',
                  'Real Time DataBase '
                ],
              ),
              CardProyect(
                listaImages: [
                  'assets/proyects/ElChaskiRestaurante/1.jpeg',
                  'assets/proyects/ElChaskiRestaurante/2.jpeg',
                  'assets/proyects/ElChaskiRestaurante/3.jpeg',
                  'assets/proyects/ElChaskiRestaurante/4.jpeg',
                  'assets/proyects/ElChaskiRestaurante/5.jpeg',
                  'assets/proyects/ElChaskiRestaurante/6.jpeg',
                  'assets/proyects/ElChaskiRestaurante/7.jpeg',
                  'assets/proyects/ElChaskiRestaurante/8.jpeg',
                  'assets/proyects/ElChaskiRestaurante/9.jpeg',
                  'assets/proyects/ElChaskiRestaurante/10.jpeg',
                  'assets/proyects/ElChaskiRestaurante/11.jpeg',
                ],
                title: 'Mi Restaurante',
                description:
                    'Aplicacion administrativa para dueños de negocios afiliados a El Chaski Delivery',
                tecnologies: [
                  'Flutter',
                  'Firebase',
                  'GoogleMaps',
                  'Geolocalizacion',
                  'Google Matrix',
                  'Real Time DataBase '
                ],
              ),
              CardProyect(
                listaImages: [
                  'assets/proyects/ElChaskiRider/1.jpeg',
                  'assets/proyects/ElChaskiRider/2.jpeg',
                  'assets/proyects/ElChaskiRider/3.jpeg',
                  'assets/proyects/ElChaskiRider/4.jpeg',
                  'assets/proyects/ElChaskiRider/5.jpeg',
                  'assets/proyects/ElChaskiRider/6.jpeg',
                  'assets/proyects/ElChaskiRider/7.jpeg',
                ],
                title: 'El Chaski Rider',
                description:
                    'Aplicacion administrativa para repartidores afiliados a El Chaski Delivery',
                tecnologies: [
                  'Flutter',
                  'Firebase',
                  'GoogleMaps',
                  'Geolocalizacion',
                  'Google Matrix',
                  'Real Time DataBase '
                ],
              ),
              CardProyect(
                listaImages: [
                  'assets/proyects/MuseosApp/1.jpeg',
                  'assets/proyects/MuseosApp/2.jpeg',
                  'assets/proyects/MuseosApp/3.jpeg',
                  'assets/proyects/MuseosApp/4.jpeg',
                  'assets/proyects/MuseosApp/5.jpeg',
                ],
                title: 'MuseosApp',
                description:
                    'Proyecto Universitario para la difucion de informacion sobre museos de La Paz',
                tecnologies: [
                  'Flutter',
                  'GraphQL',
                  'GoogleMaps',
                  'Geolocalizacion',
                ],
              ),
              CardProyect(
                listaImages: [
                  'assets/proyects/PollaCopaAmerica/1.jpeg',
                  'assets/proyects/PollaCopaAmerica/2.jpeg',
                  'assets/proyects/PollaCopaAmerica/3.jpeg',
                  'assets/proyects/PollaCopaAmerica/4.jpeg',
                  'assets/proyects/PollaCopaAmerica/5.jpeg',
                  'assets/proyects/PollaCopaAmerica/6.jpeg',
                  'assets/proyects/PollaCopaAmerica/7.jpeg',
                  'assets/proyects/PollaCopaAmerica/8.jpeg',
                  'assets/proyects/PollaCopaAmerica/9.jpeg',
                ],
                title: 'Polla Copa America 2021',
                description:
                    'Aplicacion de seguimiento y apuestas internas de los partidos de la copa america para trabajadores de Farmacias BAGO',
                tecnologies: [
                  'Flutter',
                  'Firebase',
                ],
              ),
              CardProyect(
                listaImages: [
                  'assets/proyects/TaxisApp/1.jpeg',
                  'assets/proyects/TaxisApp/2.jpeg',
                  'assets/proyects/TaxisApp/3.jpeg',
                  'assets/proyects/TaxisApp/4.jpeg',
                  'assets/proyects/TaxisApp/5.jpeg',
                  'assets/proyects/TaxisApp/6.jpeg',
                  'assets/proyects/TaxisApp/7.jpeg',
                ],
                title: 'ServiSur Taxis',
                description:
                    'Aplicacion de seguimiento y contratacion de taxis',
                tecnologies: [
                  'Flutter',
                  'Firebase',
                  'GoogleMaps',
                  'Geolocalizacion',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
