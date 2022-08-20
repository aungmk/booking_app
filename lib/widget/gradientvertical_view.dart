import 'package:booking_app/resource/color.dart';
import 'package:flutter/material.dart';


class GradientVerticalView extends StatelessWidget {
  const GradientVerticalView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black,
              ]
          )
      ),
    );
  }
}