import 'package:booking_app/widget/gradientvertical_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridComingView extends StatelessWidget {
  const GridComingView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30.0,
        left: 26.0,
        right: 26.0,
      ),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 21.0,
            mainAxisSpacing: 25.0,
            mainAxisExtent: 279.0,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.transparent,
              child: Stack(
                children:[
                  Container(
                    height: 212.0,
                    child: Positioned.fill(
                      child: Image.asset("assets/images/minion.png",
                      fit:BoxFit.cover),
                    ),
                  ),
                  GradientVerticalView(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top:7.0,right: 8.5),
                      child: Positioned.fill(
                          child: Image.asset("assets/images/Frame3.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 7,
                        bottom: 24,
                        right: 7
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                            children: [
                              Text("Minions The ri....",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Spacer(),
                              Image.asset("assets/images/IMDB9.8.png")
                            ]
                        ),
                        SizedBox(height: 12.88),
                        Row(
                          children: [
                            Text("U",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.add_circle_rounded,
                              color: Colors.white,
                              size: 5.0,
                            ),
                            SizedBox(width: 10),
                            Text("2D",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}