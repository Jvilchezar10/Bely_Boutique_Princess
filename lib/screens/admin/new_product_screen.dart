import 'package:flutter/material.dart';
// import 'package:intl/intl_browser.dart';
// import 'package:image_picker/image_picker.dart';

class NewProductScreen extends StatefulWidget {
  NewProductScreen({Key? key}) : super(key: key);

  @override
  State<NewProductScreen> createState() => _newProductState();
}

class _newProductState extends State<NewProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        const SliverAppBar(
          pinned: false,
          expandedHeight: 280.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Name product'),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('Grid Item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            },
          ),
        ),
      ]),
    );
  }
}
