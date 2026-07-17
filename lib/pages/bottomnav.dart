import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking_platform/pages/booking_page.dart';
import 'package:hotel_booking_platform/pages/home_page.dart';
import 'package:hotel_booking_platform/pages/profile_page.dart';
import 'package:hotel_booking_platform/pages/wallet_page.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  late List<Widget> pages;

  late HomePage homePage;
  late BookingPage bookingPage;
  late ProfilePage profilePage;
  late WalletPage walletPage;

  int currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    bookingPage = BookingPage();
    profilePage = ProfilePage();
    walletPage = WalletPage();

    pages = [homePage, bookingPage, walletPage, profilePage];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 70,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: [
          Icon(Icons.home, color: Colors.white, size: 30),
          Icon(Icons.shopping_bag, color: Colors.white, size: 30),
          Icon(Icons.wallet, color: Colors.white, size: 30),
          Icon(Icons.person, color: Colors.white, size: 30),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
