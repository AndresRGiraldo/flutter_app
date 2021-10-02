import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/image/paisaje1.jpg"),
          CardImage("assets/image/paisaje2.jpeg"),
          CardImage("assets/image/paisaje3.jpg"),
          CardImage("assets/image/paisaje4.jpeg"),
          CardImage("assets/image/paisaje5.jpeg"),
          CardImage("assets/image/paisaje6.jpeg"),
        ],
      ),
    );
  }
}
