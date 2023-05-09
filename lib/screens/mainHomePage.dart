import 'package:ewalletstack/Providers/authenticationProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class mainHomePage extends StatefulWidget {

  const mainHomePage({Key? key}) : super(key: key);

  @override
  State<mainHomePage> createState() => _mainHomePageState();
}

class _mainHomePageState extends State<mainHomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<authenticationProvider>(
      create: (context) => authenticationProvider(),
      child: SafeArea(
        child: Consumer<authenticationProvider> (
          builder: (context, provider, child) {
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                title: Text("Welcome ${provider.name}"),
                backgroundColor: Colors.green,
              ),
              body: Stack(
                children: [
                  Positioned(
                      left: 0,
                      child: Container(
                        height: 150,
                        width: 412,
                        color: Colors.green,

                      ))
                ],
              ),
            );
          }
        )
      ),
    );
  }
}
