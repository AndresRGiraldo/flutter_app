import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/image/itachi.jpg";
  String name = "Varuan Yasas";
  String details = " 1 review 5 photos";
  String coment = "There is an amazing place n Sri lanka";

  Review(this.pathImage, this.name, this.details, this.coment);

  Widget build(BuildContext context) {
    final userCommet = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        coment,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );
    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 17.0),
      ),
    );
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userCommet,
      ],
    );
    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.cover,
        ),
      ),
    );
    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }
}
