import 'package:flutter/material.dart';
import 'package:portafolio/Utils/UtilsDesign.dart';

class TitleSkill extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const TitleSkill(
      {@required this.image, @required this.title, @required this.subTitle})
      : assert(image != null),
        assert(title != null),
        assert(subTitle != null);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.yellow[600].withOpacity(0.7),
            padding: EdgeInsets.all(10),
            width: 50,
            height: 50,
            child: Image.asset(
              this.image,
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(72, 15, 46, 1.0),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 4,
                      offset: Offset(0, 2),
                      color: Colors.black45),
                ],
              ),
              padding:
                  EdgeInsets.only(left: 20, right: 40, top: 12, bottom: 12),
              margin: EdgeInsets.only(right: 10),
              child: RichText(
                text: TextSpan(
                    text: '${this.title} /',
                    style: textTitleSkill,
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ${this.subTitle}',
                        style: textTitleSkill
                            .merge(TextStyle(fontWeight: FontWeight.normal)),
                      )
                    ]),
              ),
              // Text(
              //   'HOLA MUNDO',
              //   style: textTitleSkill,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
