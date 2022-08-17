import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GrideView extends StatelessWidget {
  const GrideView({
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
            child: Stack(
              children:[
              Positioned.fill(
                child: Image.asset("assets/images/Movie.png"),
                ),
                Positioned.fill(
                    child: Image.asset("assets/images/Gradient.png"),
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
                          Text("Venom II",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                          Spacer(),
                          Image.asset("assets/images/IMDB.png")
                        ]
                        ),
                      SizedBox(height: 12.88),
                      Row(
                        children: [
                          Text("U/A",
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
                          Text("2D,3D,3D IMAX",
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