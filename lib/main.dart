import 'package:flutter/material.dart';
import 'package:nubank/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(0),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nubank Study',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.dark,
        ),
        home: HomePage(),
      ),
    );
  }
}
