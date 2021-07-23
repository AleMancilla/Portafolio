import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portafolio/Utils/UtilsDesign.dart';

class CardContactMe extends StatefulWidget {
  final String image;
  final Function ontap;
  final String title;
  final String subTitle;

  const CardContactMe({
    @required this.image,
    @required this.ontap,
    @required this.title,
    @required this.subTitle,
  })  : assert(image != null),
        assert(ontap != null),
        assert(title != null),
        assert(subTitle != null);

  @override
  _CardContactMeState createState() => _CardContactMeState();
}

class _CardContactMeState extends State<CardContactMe> {
  double marginhorizontal = 20;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      mouseCursor: MouseCursor.defer,
      onHover: (value) {
        if (value) {
          marginhorizontal = 10;
        } else {
          marginhorizontal = 20;
        }
        setState(() {});
      },
      onTap: this.widget.ontap,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: marginhorizontal, vertical: 2.5),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black38, offset: Offset(-1, 3), blurRadius: 5),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              this.widget.image,
              width: 50,
              height: 50,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${this.widget.title}',
                      style: textContactTitle,
                    ),
                    SelectableText(
                      '${this.widget.subTitle}',
                      style: textContactSubTitle,
                    ),
                  ],
                ),
              ),
            ),
            Material(
                child: IconButton(
                    icon: Icon(Icons.link), onPressed: this.widget.ontap)),
          ],
        ),
      ),
    );
  }
}
