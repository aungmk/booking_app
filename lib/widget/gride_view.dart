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
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue,
            child: Text("index: $index"),
          );
        },
      ),
    );
  }
}