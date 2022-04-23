import 'package:bely_boutique/screens/product_screen.dart';
import 'package:bely_boutique/theme.dart';
import 'package:flutter/material.dart';

import '../screens/admin/new_product_screen.dart';

class CustomScrollViewProducts extends StatefulWidget {
  const CustomScrollViewProducts({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomScrollViewProducts> createState() =>
      _CustomScrollViewProductsState();
}

class _CustomScrollViewProductsState extends State<CustomScrollViewProducts> {
  Color colorcard = Colors.pink;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: true,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(0),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ProductScreen();
                        }));
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(
                          flex: 10,
                          child: Image(
                              image: AssetImage(
                                  'graphics/images/Bestido 1_n.jpg')),
                        ),
                        Expanded(child: Text("Product 1"))
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return NewProductScreen();
                        }));
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(
                          flex: 10,
                          child: Image(
                              image: AssetImage(
                                  'graphics/images/Bestido 1_n.jpg')),
                        ),
                        Expanded(child: Text("Product 1"))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
