import 'package:flutter/material.dart';

class ImageHover extends StatefulWidget {
  final String imageAsset;

  const ImageHover({Key key, this.imageAsset}) : super(key: key);
  @override
  _ImageHoverState createState() => _ImageHoverState();
}

class _ImageHoverState extends State<ImageHover> with TickerProviderStateMixin {
  double elevation = 4.0;
  double scale = 1.0;
  Offset translate = Offset(0, 0);

  AnimationController _controllerA;
  @override
  void initState() {
    _controllerA = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 1.1,
        duration: Duration(milliseconds: 150));
    _controllerA.addListener(() {
      setState(() {
        scale = _controllerA.value;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controllerA.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        // print(value);
        if (value) {
          setState(() {
            elevation = 10.0;
            // scale = 1.1;

            _controllerA.forward(from: 0.0);
            translate = Offset(0, 0);
          });
        } else {
          setState(() {
            elevation = 4.0;
            // scale = 1.0;
            _controllerA.reverse();
            translate = Offset(0, 0);
          });
        }
      },
      child: Transform.translate(
        offset: translate,
        child: Transform.scale(
          scale: scale,
          child: Material(
            elevation: elevation,
            child: Image.network(
              this.widget.imageAsset,
            ),
          ),
        ),
      ),
    );
  }
}
