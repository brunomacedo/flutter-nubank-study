import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final controller;
  final List<Map<String, Object>> list;

  const PageViewApp({
    Key key,
    this.top,
    this.onChanged,
    this.controller,
    this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = list.map((item) {
      return CardApp(text: item['text']);
    }).toList();

    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
      height: MediaQuery.of(context).size.height * 0.55,
      top: top,
      left: 0,
      right: 0,
      child: PageView(
        controller: controller,
        onPageChanged: onChanged,
        physics: BouncingScrollPhysics(),
        children: [
          ...widgets,
        ],
      ),
    );
  }
}
