import 'dart:convert';

import 'package:deepklarity/models/productmodel.dart';
import 'package:deepklarity/productview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<dynamic> productList = [];
  // Future<void> readJson() async {
  //   final String response =
  //       await rootBundle.loadString('assets/productlist.json');
  //   final data = await json.decode(response);
  //   setState(() {
  //     productList = data['productlist']
  //         .map((data) => ProductList.fromJson(data))
  //         .toList();
  //   });
  // }

  // @override
  // void initState() {
  //   readJson();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProductView()));
            },
            child: const Text('LOAD DATA'),
          ),
        ),
      ),
    );
  }
}
