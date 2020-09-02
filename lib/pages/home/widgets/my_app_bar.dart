import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final bool showMenu;

  const MyAppBar({Key key, this.showMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Container(
          color: Colors.white10,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  /* Image.network(
                    'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo.png',
                    color: Colors.white,
                    height: 40,
                  ), */
                  Image.asset(
                    'images/logo.png',
                    color: Colors.white,
                    height: 40,
                  ),
                  /* SvgPicture.asset(
                    'images/logo.svg',
                    height: 35,
                  ), */
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Bruno',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Icon(
                !showMenu ? Icons.expand_more : Icons.expand_less,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
