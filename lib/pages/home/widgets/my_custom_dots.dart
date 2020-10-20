import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCustomDots extends StatelessWidget {
  final double top;
  final int counter;
  final controller;

  const MyCustomDots({
    Key key,
    this.top,
    this.controller,
    this.counter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: SmoothPageIndicator(
        controller: controller,
        count: counter,
        onDotClicked: (index) {
          controller.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        },
        effect: WormEffect(
          spacing: 10,
          dotColor: Colors.white38,
          activeDotColor: Colors.white,
          dotWidth: 11,
          dotHeight: 11,
        ),
      ),
    );
  }
}
