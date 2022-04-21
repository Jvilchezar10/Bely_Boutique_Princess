import 'package:flutter/material.dart';

import 'package:bely_boutique/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/bottom_navigation/bottom_navigation_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavigationBloc(),
      child: const HomeView(),
    );
  }
}
