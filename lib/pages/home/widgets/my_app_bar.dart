import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /* Image.network(
                'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo.png',
                color: Colors.white,
                height: 40,
              ), */
              Image.asset(
                'images/logo.png',
                height: 60,
              ),
              /* SvgPicture.asset(
                'images/logo.svg',
                height: 35,
              ), */
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
