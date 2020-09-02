import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCustomDots extends StatelessWidget {
  final double top;
  final controller;

  const MyCustomDots({
    Key key,
    this.top,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: SmoothPageIndicator(
        controller: controller,
        count: 3,
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
