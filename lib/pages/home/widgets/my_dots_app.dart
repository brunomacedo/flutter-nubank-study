import 'package:flutter/material.dart';

/* Creating dots from zero */

class MyDotsApp extends StatelessWidget {
  final double top;
  final int currentIndex;

  const MyDotsApp({
    Key key,
    this.currentIndex,
    this.top,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: Row(
        children: [
          MyDot(dotIndex: 0, index: currentIndex),
          MyDot(dotIndex: 1, index: currentIndex),
          MyDot(dotIndex: 2, index: currentIndex),
        ],
      ),
    );
  }
}

class MyDot extends StatelessWidget {
  final int index;
  final int dotIndex;

  const MyDot({
    Key key,
    this.index,
    this.dotIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
        height: 7,
        width: 7,
        decoration: BoxDecoration(
          color: index == dotIndex ? Colors.white : Colors.white38,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
