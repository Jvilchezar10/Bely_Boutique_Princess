import 'package:flutter/material.dart';

class Prueba extends StatelessWidget {
  const Prueba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: EdgeInsets.all(20.0),
          minScale: 0.1,
          maxScale: 1.6,
          child: Image(image: AssetImage("graphics/images/Bestido 1_n.jpg")),
        ),
      ),
    );
  }
}
