import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _presed = false;
  void onPressedFav() {
    setState(() {
      _presed = !_presed;
    });
    Scaffold.of(context).showSnackBar(SnackBar(
        content: !this._presed
            ? Text("Eliminaste de tus favoritos")
            : Text("Agaste a tus favoritos")));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: "Fav",
        onPressed: onPressedFav,
        child: Icon(_presed ? Icons.favorite : Icons.favorite_border));
  }
}
