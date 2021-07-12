import 'package:flutter/material.dart';

class ItemSkill extends StatelessWidget {
  final String image;
  final String text;
  final int porcentage;

  const ItemSkill({
    @required this.image,
    @required this.text,
    this.porcentage = 0,
  })  : assert(image != null),
        assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 70, right: 20, bottom: 5, top: 5),
      child: Row(
        children: [
          Image.asset(
            this.image,
            width: 40,
            height: 40,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: Text('${this.text}')),
                  Text('${this.porcentage} %')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
