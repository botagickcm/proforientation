import 'package:flutter/material.dart';
import 'package:sport/pages/listik.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Hobby",
          ),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Add your menu functionality here
              // For example, open a drawer or show a menu
              print('Menu icon pressed');
            },
          ),
        ),
        body: Listik(),
      ),
    );
  }
}
