import 'package:booking_app/resource/color.dart';
import 'package:booking_app/widget/gridfood_view.dart';
import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  List<String> foodList = [
    "All",
    "Combo",
    "Snack",
    "Popcorn",
    "Beverage"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PRIMARY_COLOR,
        title: Text(
          "Grab a bite!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 22,
          ),
          child: Icon(
            Icons.chevron_left,
            size: 40,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Icon(Icons.search, size: 22, color: Colors.white),
                SizedBox(width: 37),
                Text("SKIP",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: PRIMARY_COLOR,
          height: 900,
          width: 414,
          child: Column(
            children: [
              FoodTabBarView(foodList: foodList),
              GridFoodView(),
              Padding(
                padding: const EdgeInsets.only(left: 22,right: 21),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: FlatButton(
                    onPressed: () {
                      print("create button click");
                    },
                    child: Row(
                      children: [

                      ],
                    ),
                    color: SELECTED_BOT_COLOR,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

class FoodTabBarView extends StatelessWidget {

  const FoodTabBarView({
    required this.foodList,
  });

  final List<String> foodList;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: PRIMARY_COLOR,
      height: 60,
      width: 414,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 11.0,
            ),
            child: DefaultTabController(
              length: foodList.length,
              child: TabBar(
                isScrollable: true,
                indicatorColor: SELECTED_BOT_COLOR,
                unselectedLabelColor: Colors.white,
                tabs: foodList
                    .map(
                      (food) =>
                      Tab(
                        child: Text(food),
                      ),
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}