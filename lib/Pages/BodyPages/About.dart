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
                      '''Lorem ex labore tempor sit laboris nisi consequat mollit. Ea duis commodo duis aute minim velit. Enim irure nisi id consequat elit mollit magna sint pariatur excepteur eiusmod. Aute cillum et nulla exercitation dolore anim ut reprehenderit incididunt voluptate officia. Enim incididunt cillum eiusmod reprehenderit nulla nostrud exercitation dolore commodo magna id voluptate et.

Esse enim et ipsum sint exercitation occaecat excepteur anim sint voluptate laboris. Eiusmod esse commodo quis veniam ipsum qui ex nulla ad dolor deserunt ipsum nulla mollit. Laborum ex dolor ad minim irure sint amet. Do cupidatat aute magna aliquip.

Eiusmod occaecat veniam ea anim nulla est. Elit ullamco adipisicing occaecat nulla nulla laborum sint cupidatat magna. Veniam magna reprehenderit consequat fugiat nulla amet nisi aute duis ea irure duis Lorem non. Veniam officia minim laboris labore officia cupidatat anim adipisicing consectetur culpa sunt. Incididunt deserunt adipisicing in consequat aliqua deserunt proident irure. Ea exercitation do ipsum duis proident ut ullamco ea nulla elit consectetur.

Aliquip culpa incididunt pariatur laboris aute tempor irure proident officia id. Dolor dolor reprehenderit magna sint irure laborum amet deserunt. Lorem in aliquip cillum adipisicing velit. Lorem sint in commodo consequat commodo ullamco ipsum magna dolore fugiat excepteur sint. Adipisicing esse veniam incididunt enim. Pariatur ut velit voluptate adipisicing irure qui. Consequat anim sint veniam excepteur est aute fugiat in Lorem enim aliquip officia qui.

Irure aliqua laborum proident mollit dolore elit in tempor. Non magna anim voluptate aliqua ex ullamco velit officia nulla in cupidatat cupidatat ex et. Est minim officia veniam nostrud cupidatat consequat commodo sint dolor excepteur culpa occaecat do non. Qui ad ea fugiat eu eu Lorem ipsum quis sint reprehenderit nostrud magna deserunt nisi. Veniam cillum in aliqua reprehenderit non sunt consequat aliqua. Eiusmod duis do proident mollit officia reprehenderit do qui id nostrud Lorem sint irure. Pariatur ut sunt labore excepteur et nisi pariatur do.

Consequat incididunt proident eu laborum tempor commodo ad laborum adipisicing. Ut ea anim quis culpa exercitation. Ea ipsum voluptate cillum laboris sunt esse dolore esse mollit ut cillum est velit duis. Ut magna exercitation officia anim sit. Proident consectetur deserunt velit laboris tempor ut eiusmod occaecat magna labore id.'''),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
