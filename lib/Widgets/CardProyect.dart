import 'dart:async';

import 'package:finite_coverflow/finite_coverflow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  // int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool autoplay = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      height: (size.width > 600) ? 250 : 450,
      child: (size.width > 600)
          ? Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 250,
                      padding: EdgeInsets.only(
                          left: 10, right: 5, top: 20, bottom: 10),
                      child: Scrollbar(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                              // CupertinoButton(child: Text('link'), onPressed: () {})
                            ],
                          ),
                        ),
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FinitePager(
                      // pageSnapping: false,
                      opacity: 0.4, // Minimum opacity value for the items
                      scrollDirection:
                          Axis.horizontal, // Scroll direction for pager
                      pagerType: PagerType
                          .simple, // Change the FinitePager behavior to stack slider
                      children: this
                          .widget
                          .listaImages
                          .map((e) => ImageHover(
                                imageAsset: e,
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  padding:
                      EdgeInsets.only(left: 10, right: 5, top: 20, bottom: 10),
                  child: Scrollbar(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                          // CupertinoButton(child: Text('link'), onPressed: () {})
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FinitePager(
                      // pageSnapping: false,
                      opacity: 0.4, // Minimum opacity value for the items
                      scrollDirection:
                          Axis.horizontal, // Scroll direction for pager
                      pagerType: PagerType
                          .simple, // Change the FinitePager behavior to stack slider
                      children: this
                          .widget
                          .listaImages
                          .map((e) => ImageHover(
                                imageAsset: e,
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
