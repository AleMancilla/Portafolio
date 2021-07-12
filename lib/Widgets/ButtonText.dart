import 'package:flutter/material.dart';
import 'package:portafolio/Utils/UtilsDesign.dart';

class ButtenText extends StatefulWidget {
  @override
  _ButtenTextState createState() => _ButtenTextState();
}

class _ButtenTextState extends State<ButtenText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: ,
      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
      child: Material(
        // color: Colors.green,
        child: InkWell(
          onTap: () {
            print('object');
          },
          focusColor: Colors.grey.shade100,
          hoverColor: Colors.grey.shade100,
          // splashColor: Colors.red,
          highlightColor: Colors.grey.shade200,
          child: Ink(
            padding: EdgeInsets.symmetric(vertical: 10),
            // height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Container(
              alignment: Alignment.center,
              // color: Colors.yellow,
              child: Text('data'),
            ),
          ),
        ),
      ),
    );
  }
}
