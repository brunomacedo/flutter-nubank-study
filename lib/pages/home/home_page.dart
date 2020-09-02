import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/my_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(),
        ],
      ),
    );
  }
}
