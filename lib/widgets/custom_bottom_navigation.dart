import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/bottom_navigation/bottom_navigation_bloc.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Widget> items;
  @override
  Widget build(BuildContext context) {
    final navigationKey = GlobalKey<CurvedNavigationBarState>();
    final bottomNavigationBloc = context.read<BottomNavigationBloc>();

    return BlocBuilder<BottomNavigationBloc, int>(
      builder: (context, state) {
        return Theme(
          data: Theme.of(context)
              .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
          child: CurvedNavigationBar(
            key: navigationKey,
            index: state,
            height: 60,
            backgroundColor: Colors.white,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 400),
            color: Colors.pink,
            items: items,
            onTap: (index) => bottomNavigationBloc.add(TabChangeEvent(index)),
          ),
        );
      },
    );
  }
}
