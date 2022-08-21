import 'package:booking_app/resource/color.dart';
import 'package:booking_app/viewitem/banner_view.dart';
import 'package:booking_app/widget/banner_section_view.dart';
import 'package:booking_app/widget/bottombar_view.dart';
import 'package:booking_app/widget/gridhome_view.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PRIMARY_COLOR,
        title: Text(
          "Yangon",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 16,
              fontStyle: FontStyle.italic),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 37,
          ),
          child: Image.asset("assets/images/Vectorlocation.png"),
        ),
        actions: [
          Icon(Icons.search, size: 22, color: Colors.white),
          SizedBox(width: 20),
          Icon(Icons.add_alert_sharp, size: 18, color: Colors.white),
          Image.asset("assets/images/Vectorscan.png")
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: PRIMARY_COLOR,
          child: Column(
            children: [
              BannerSectionView(),
              SizedBox(height: 30.0),
              Container(
                height: 55,
                width: 370,
                decoration: BoxDecoration(
                  color: PRIMARY_COLOR,
                  borderRadius: BorderRadius.circular(5.0)
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      height: 40,
                      width: 177,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4)
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Now Showing',
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black,
                            backgroundColor: SELECTED_BOT_COLOR,
                            textStyle:
                            const TextStyle(fontSize: 16)),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      height: 40,
                      width: 177,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4)
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Now Showing',
                        ),
                        style: TextButton.styleFrom(
                            primary: Colors.black,
                            backgroundColor: SELECTED_BOT_COLOR,
                            textStyle:
                            const TextStyle(fontSize: 16)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              GridHomeView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNaviBar(),
    );
  }
}

class BannerSectionView extends StatefulWidget {


  @override
  State<BannerSectionView> createState() => _BannerSectionViewState();
}

class _BannerSectionViewState extends State<BannerSectionView> {
  double _position=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4,
          child: PageView(
            onPageChanged: (page){
              setState(() {
                _position=page.toDouble();
              });
            },
            children: [
              BannerView(),
              BannerView(),
              BannerView(),
              BannerView()
            ],
          ),
        ),
        SizedBox(height: 17.0),

        DotsIndicator(
          dotsCount: 4,
          position: _position,
          decorator: DotsDecorator(
              color: DOT_INACTIVE_COLOR,
              activeColor: SELECTED_BOT_COLOR
          ),
        ),
      ],
    );
  }
}


