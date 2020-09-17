import 'package:flutter/material.dart';
import 'package:nubank/core/internationalization/app_translate.dart';

class MyAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  const MyAppBar({Key key, this.showMenu, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            // color: Colors.white10,
            height: MediaQuery.of(context).size.height * 0.18,
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
                      AppTranslate(context).text('btn_sign'),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
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
        ),
      ],
    );
  }
}
