import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:testapp_booking/pages/booking_page.dart';
import 'package:testapp_booking/pages/HomePage.dart';
import 'package:testapp_booking/pages/SettingsPage.dart';
import 'package:testapp_booking/pages/login.dart';

class mainNavHome extends StatefulWidget {
  @override
  State<mainNavHome> createState() => Nav();
}

class Nav extends State<mainNavHome> {
  int index = 0;
  final navPages = [
    Homepage(),
    BookingPage(),
    Login(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navPages[index],
      bottomNavigationBar: Container(
        color: Colors.white, // Set background color of the bottom navigation bar
        child: GNav(
          backgroundColor: Colors.black, // Set background color of the GNav
          color: Colors.white, // Default color of icons and text
          activeColor: Colors.black, // Color of icons and text when selected
          iconSize: 24, // Keep icon size unchanged
          rippleColor: Colors.white.withOpacity(0.2), // Ripple effect color
          hoverColor: Colors.white.withOpacity(0.1), // Hover effect color
          gap: 8, // Gap between icons and text
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding inside GNav
          duration: Duration(milliseconds: 300), // Duration of the animation
          tabBackgroundColor: Colors.white, // Background color of the selected tab

          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Inner padding
              iconColor: Colors.white,
              textColor: Colors.black,
              backgroundColor: Colors.white,
            ),
            GButton(
              icon: Icons.calendar_today,
              text: 'Bookings',
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Inner padding
              iconColor: Colors.white,
              textColor: Colors.black,
              backgroundColor: Colors.white,
            ),
            GButton(
              icon: Icons.notifications,
              text: 'Notifications',
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Inner padding
              iconColor: Colors.white,
              textColor: Colors.black,
              backgroundColor: Colors.white,
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Inner padding
              iconColor: Colors.white,
              textColor: Colors.black,
              backgroundColor: Colors.white,
            ),
          ],
          selectedIndex: index,
          onTabChange: (index) => setState(() {
            this.index = index;
          }),
        ),
      ),
    );
  }
}
