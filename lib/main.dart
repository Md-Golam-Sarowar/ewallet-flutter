import 'package:ewalletstack/Providers/authenticationProvider.dart';
import 'package:ewalletstack/screens/home.dart';
import 'package:ewalletstack/screens/login.dart';
import 'package:ewalletstack/screens/mainHomePage.dart';
import 'package:ewalletstack/screens/user_registration.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => authenticationProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => home(),
          '/login': (context) => login(),
          '/register': (context) => registration(),
          '/home': (context) => mainHomePage(),
        },
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
