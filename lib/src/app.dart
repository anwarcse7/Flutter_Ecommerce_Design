import 'package:flutter/material.dart';
import 'package:anando_bazar_app/src/ui/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: Color(0xFFFFFFFF),
      )),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        // body: MovieList(),
        body: MyHomePage(),
      ),
    );
  }
}
