import 'package:booking_app/resource/color.dart';
import 'package:flutter/material.dart';


class GradientView extends StatelessWidget {
  const GradientView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                PRIMARY_COLOR,
                Colors.transparent,

              ]
          )
      ),
    );
  }
}