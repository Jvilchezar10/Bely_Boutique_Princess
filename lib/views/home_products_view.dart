import 'package:flutter/material.dart';

import '../widgets/custom_scrollview_products.dart';

class HomeProductsView extends StatefulWidget {
  const HomeProductsView({
    Key? key,
  }) : super(key: key);

  @override
  _HomeProductsViewState createState() => _HomeProductsViewState();
}

class _HomeProductsViewState extends State<HomeProductsView> {
  @override
  String dropdownValue = 'opcion1';
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white60),
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 55,
              child: DropdownButton<String>(
                isExpanded: true,
                focusColor: Colors.pink,
                value: dropdownValue,
                icon: const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 45,
                ),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple, fontSize: 18),
                underline: Container(
                  height: 2,
                  color: Colors.pinkAccent,
                ),

                hint: const Text('Categorias'),
                // cambiar por tipo Categorias
                items: <String>['opcion1', 'opcion2', 'opcion3']
                    .map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  },
                ).toList(),
                onChanged: (String? index) {
                  setState(() {
                    dropdownValue = index!;
                  });
                },
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 75),
                child: CustomScrollViewProducts(), //Widget ScrollView
              ),
            ),
          ],
        ),
      ),
    );
  }
}
