import 'package:flutter/material.dart';

class CustomScrollViewProducts extends StatelessWidget {
  const CustomScrollViewProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: true,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.production_quantity_limits,
                      size: 80,
                    ),
                    Text("Product 1")
                  ],
                ),
                color: Colors.green[100],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.production_quantity_limits,
                      size: 80,
                    ),
                    Text("Product 1")
                  ],
                ),
                color: Colors.green[200],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.production_quantity_limits,
                      size: 80,
                    ),
                    Text("Product 1")
                  ],
                ),
                color: Colors.green[300],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.production_quantity_limits,
                      size: 80,
                    ),
                    Text("Product 1")
                  ],
                ),
                color: Colors.green[400],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.production_quantity_limits,
                      size: 80,
                    ),
                    Text("Product 1")
                  ],
                ),
                color: Colors.green[500],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.production_quantity_limits,
                      size: 80,
                    ),
                    Text("Product 1")
                  ],
                ),
                color: Colors.green[600],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
