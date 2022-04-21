import 'package:flutter/material.dart';

import 'package:bely_boutique/views/shopping_cart_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/bottom_navigation/bottom_navigation_bloc.dart';
import '../widgets/custom_bottom_navigation.dart';
import 'home_products_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final views = [
      HomeProductsView(),
      ShoppingCartView(),
      ShoppingCartView(),
    ];
    // Items from navigation bar
    const items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.shopping_cart, size: 30),
      Icon(Icons.account_circle, size: 30),
    ];

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text(
          "Bely Boutique Princess",
        ),
        leading: Container(
          alignment: Alignment.centerRight,
          child: const Image(
            image: AssetImage(
              'graphics/images/bely_logo-edit.png',
            ),
            color: Colors.yellow,
          ),
        ),
        elevation: 10,
        actions: <Widget>[
          PopupMenuButton<String>(
              onSelected: (index) {},
              itemBuilder: (BuildContext context) {
                return {'Logout', 'Settings'}.map((String choice) {
                  return PopupMenuItem<String>(
                      value: choice, child: Text(choice));
                }).toList();
              }),
        ],
      ),
      body: BlocBuilder<BottomNavigationBloc, int>(
        builder: (context, state) {
          return views[state];
        },
      ),
      // Bottom Navigation bar
      bottomNavigationBar: const CustomBottomNavigationBar(items: items),
    );
  }
}
