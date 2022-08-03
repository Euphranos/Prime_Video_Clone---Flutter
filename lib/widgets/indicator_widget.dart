// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndicatorWidget extends StatefulWidget {
  final List<String> sliderItems;
  final int activeSliderIndex;
  IndicatorWidget({
    Key? key,
    required this.sliderItems,
    required this.activeSliderIndex,
  }) : super(key: key);

  @override
  State<IndicatorWidget> createState() => _IndicatorWidgetState();
}

class _IndicatorWidgetState extends State<IndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: widget.activeSliderIndex,
      count: widget.sliderItems.length,
      effect: SlideEffect(
        dotColor: Colors.white.withOpacity(0.5),
        activeDotColor: Colors.white,
        spacing: 10,
        dotHeight: 10,
        dotWidth: 10,
      ),
    );
  }
}
