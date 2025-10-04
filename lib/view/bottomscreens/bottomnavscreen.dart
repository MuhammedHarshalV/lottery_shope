import 'package:flutter/material.dart';
import 'package:lottery_shope/constance/colorcontsance.dart';
import 'package:lottery_shope/view/bottomscreens/Progress/progresspage.dart';
import 'package:lottery_shope/view/bottomscreens/account/accountscreen.dart';
import 'package:lottery_shope/view/bottomscreens/home/homepage.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  List<Widget> screens = [Homepage(), Progresspage(), Accountscreen()];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (value) {
            selectedindex = value;
            setState(() {});
          },
          selectedItemColor: Colorcontsance.white,
          unselectedItemColor: Colorcontsance.black,
          backgroundColor: Colorcontsance.red,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Status',
              icon: Icon(Icons.shopping_cart_checkout),
              activeIcon: Icon(Icons.shopping_cart),
            ),
            BottomNavigationBarItem(
              label: 'Account',
              icon: Icon(Icons.person_2_outlined),
              activeIcon: Icon(Icons.person),
            ),
          ],
        ),

        body: screens[selectedindex],
      ),
    );
  }
}
