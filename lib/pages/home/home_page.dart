import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/my_app_bar.dart';
import 'package:nubank/pages/home/widgets/my_custom_dots.dart';
// import 'package:nubank/pages/home/widgets/my_dots_app.dart';
import 'package:nubank/pages/home/widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  // int _currentIndex;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    // _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    final controller = PageController(viewportFraction: 0.9);

    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          PageViewApp(
            controller: controller,
            top: _screenHeight * 0.20,
            /* onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            }, */
          ),
          MyCustomDots(
            controller: controller,
            top: _screenHeight * 0.76,
          ),
          /* MyDotsApp(
            top: _screenHeight * 0.65,
            currentIndex: _currentIndex,
          ), */
        ],
      ),
    );
  }
}
