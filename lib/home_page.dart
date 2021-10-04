import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

class HomePage extends StatelessWidget {
  String descriptionText =
      "lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec molestie mattis dui, sed dignissim urna dictum at. Donec elementum nunc vel sagittis malesuada. Pellentesque interdum feugiat velit luctus imperdiet. Curabitur nec pharetra lorem. Curabitur eu convallis quam. Sed turpis nisi, faucibus non enim non, viverra blandit metus. In dictum turpis non orci porta bibendum vitae Vivamus fermentum dignissim lacus, in pharetra sapien imperdiet a. Etiam condimentum imperdiet purus, non pulvinar lacus ullamcorper nec. Pellentesque erat diam, maximus id efficitur sed, elementum eu mauris. Maecenas lorem sem, blandit sed diam sodales, imperdiet sollicitudin magna. Sed tempor elit sed volutpat blandit. Proin in enim id sem aliquam elementum. Praesent vitae iaculis odio, non efficitur justo. Suspendisse blandit luctus risus, interdum cursus neque congue eget. Sed rhoncus rhoncus tortor nec pharetra. ";

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPace("Bahamas", 4, descriptionText),
            ReviewList(),
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }
}
