import 'package:flutter/material.dart';

class HomeProductsView extends StatefulWidget {
  const HomeProductsView({
    Key? key,
  }) : super(key: key);

  @override
  _HomeProductsViewState createState() => _HomeProductsViewState();
}

class _HomeProductsViewState extends State<HomeProductsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Text(
              "HOLA",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Tab"),
            ),
          ],
        ),
      ),
    );
  }
}
