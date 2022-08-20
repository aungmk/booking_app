import 'package:booking_app/resource/color.dart';
import 'package:flutter/material.dart';

class BottomNaviBar extends StatelessWidget {
  const BottomNaviBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: PRIMARY_COLOR,
      unselectedItemColor: UNSELECTED_BOT_COLOR,
      selectedItemColor: SELECTED_BOT_COLOR,

      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/images/Vectorplay_botnavi.png"),
          ),
          label: 'Movies',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/images/cinemaicon.png"),
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
    );
  }
}
