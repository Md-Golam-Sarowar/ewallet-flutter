import 'package:flutter/material.dart';

class mainHomePage extends StatefulWidget {
  const mainHomePage({Key? key}) : super(key: key);

  @override
  State<mainHomePage> createState() => _mainHomePageState();
}

class _mainHomePageState extends State<mainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Registration"),

      ),
      body:
      Stack(
        children: [
          Container(

          ),
          Container(

          ),
        ],
      ),
    );
  }
}
