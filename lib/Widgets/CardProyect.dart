import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:portafolio/Utils/UtilsDesign.dart';
import 'package:portafolio/Widgets/ImageHover.dart';

class CardProyect extends StatefulWidget {
  final List<String> listaImages;
  final String title;
  final String description;
  final List<String> tecnologies;

  const CardProyect(
      {Key key,
      this.listaImages,
      this.title,
      this.description,
      this.tecnologies})
      : super(key: key);

  @override
  _CardProyectState createState() => _CardProyectState();
}

class _CardProyectState extends State<CardProyect> {
  InfiniteScrollController controller;
  // int selectedIndex = 0;
  Timer delayed;
  @override
  void initState() {
    super.initState();
    controller = InfiniteScrollController();
    // controller.addListener(() {
    //   print(controller.)
    // });
    Future.delayed(Duration.zero, () {
      delayed = Timer.periodic(Duration(seconds: 3), (value) {
        // print(value.isActive);
        controller.nextItem(
            duration: Duration(seconds: 3), curve: Curves.linear);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    delayed.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(-3, 2),
            )
          ]),
      width: double.infinity,
      height: 250,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                padding:
                    EdgeInsets.only(left: 10, right: 5, top: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${this.widget.title}',
                      style: textTitleCardProyect,
                    ),
                    Text(
                      '${this.widget.description}',
                      style: textdescription,
                    ),
                    Text(
                      '\nTecnologias usadas:',
                      style: textTecnologies,
                    ),
                    ...(this
                        .widget
                        .tecnologies
                        .map((e) => Text(
                              ' • $e',
                              style: textTecnologies,
                            ))
                        .toList()),
                    Expanded(child: Container()),
                    // CupertinoButton(child: Text('link'), onPressed: () {})
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InfiniteCarousel.builder(
                  itemCount: this.widget.listaImages.length,
                  itemExtent: 150,
                  center: false,
                  anchor: 0.0,
                  velocityFactor: 0.2,
                  onIndexChanged: (index) {},
                  controller: controller,
                  axisDirection: Axis.horizontal,
                  loop: true,
                  itemBuilder: (context, itemIndex, realIndex) {
                    return Container(
                      // padding: EdgeInsets.all(8),
                      // color: Colors.red,
                      child: ImageHover(
                        imageAsset: this.widget.listaImages[itemIndex],
                      ),
                    );
                  },
                ),
              )),
        ],
      ),
    );
  }
}
