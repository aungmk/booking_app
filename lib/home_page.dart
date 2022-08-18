import 'package:booking_app/resource/color.dart';
import 'package:booking_app/viewitem/banner_vew.dart';
import 'package:booking_app/widget/gride_view.dart';
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
              Container(
                height: MediaQuery.of(context).size.height / 4,
                child: PageView(
                  children: [
                    BannerView(),
                    BannerView(),
                    BannerView(),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              GrideView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: PRIMARY_COLOR,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage("assets/images/Vectorplay_botnavi.png"),
            ),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/icons8-movie-theater-50.png"),
            ),
            label: 'Cinemas',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/Vectorticket.png"),
            ),
            label: 'Tickets',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/profileicon.png"),
            ),
            label: 'Profile',
          ),
        ],

      ),
    );
  }
}


