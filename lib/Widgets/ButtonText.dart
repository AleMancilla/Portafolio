import 'package:flutter/material.dart';
import 'package:portafolio/Core/Provider/UtilsProvider.dart';
import 'package:provider/provider.dart';

class ButtenText extends StatefulWidget {
  final String text;
  final bool status;
  final Function ontap;

  const ButtenText({
    @required this.text,
    this.status = false,
    @required this.ontap,
  });
  @override
  _ButtenTextState createState() => _ButtenTextState();
}

class _ButtenTextState extends State<ButtenText> {
  @override
  Widget build(BuildContext context) {
    UtilsProvider utilsProvider = Provider.of<UtilsProvider>(context);
    return Container(
      // padding: ,
      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
      child: Material(
        // color: Colors.green,
        child: InkWell(
          onTap: this.widget.ontap,
          // focusColor: Colors.grey.shade100,
          // hoverColor: Colors.grey.shade100,
          // splashColor: Colors.red,
          highlightColor: Colors.grey.shade200,
          child: Ink(
            padding: EdgeInsets.symmetric(vertical: 10),
            // height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: this.widget.status
                  ? utilsProvider.primaryColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Container(
              alignment: Alignment.center,
              // color: Colors.yellow,
              child: Text(
                this.widget.text,
                style: TextStyle(
                  color: this.widget.status ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
