import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/image/itachi.jpg", "Gisele Thomas", "1 review 5 photos",
            "There is an amazing place n Sri lanka"),
        Review("assets/image/naruto.jpg", "Gisele Thomas", "2 review 6 photos",
            "There is an amazing place n Sri lanka"),
        Review("assets/image/sazuke.jpg", "Gisele Thomas", "3 review 7 photos",
            "There is an amazing place n Sri lanka"),
      ],
    );
  }
}
