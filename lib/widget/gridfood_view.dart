import 'package:booking_app/widget/gradientvertical_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridFoodView extends StatelessWidget {
  //final int gridcount;


  //GridHomeView (this.gridcount);
  const GridFoodView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        left: 25.0,
        right: 25.0,
      ),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 25.0,
            mainAxisSpacing: 25.0,
            mainAxisExtent: 220.0,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              child: Stack(
                children:[
                  Container(
                    height: 220.0,
                    width: 170.0,
                    child: Positioned.fill(
                      child: Image.asset("assets/images/food.png",
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    );
  }
}