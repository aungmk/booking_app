import 'package:booking_app/resource/color.dart';
import 'package:booking_app/viewitem/banner_view.dart';
import 'package:booking_app/viewitem/gridcome_search_view.dart';
import 'package:booking_app/viewitem/gridhome_search_view.dart';
import 'package:booking_app/widget/gridhome_view.dart';
import 'package:flutter/material.dart';

class ComingSearchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PRIMARY_COLOR,
        title: Row(
          children: [
            Icon(Icons.search, size: 22, color: Colors.white),
            SizedBox(width: 10),
            Text("|"),
            SizedBox(width: 7),
            Container(
              height: 20,
              width: 109,
              decoration: BoxDecoration(
                color: PRIMARY_COLOR,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "search the movie",
                  hintStyle: TextStyle(
                    color: UNSELECTED_BOT_COLOR,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
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
          Image.asset("assets/images/Vectorfilter.png")
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: PRIMARY_COLOR,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22,top: 20),
                child: Row(
                  children: [
                    Container(
                      height: 27,
                      width: 81.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("Genres",
                              style: TextStyle(color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Positioned.fill(child: Image.asset("assets/images/Vectordownarrow.png"))
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 27,
                      width: 81.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("Format",
                              style: TextStyle(color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Positioned.fill(child: Image.asset("assets/images/Vectordownarrow.png"))
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 27,
                      width: 81.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("Month",
                              style: TextStyle(color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Positioned.fill(child: Image.asset("assets/images/Vectordownarrow.png"))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              GridComingSearchView(),
              SizedBox(height: 448),
            ],
          ),
        ),
      ),
    );
  }
}