import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:testapp_booking/pages/booking_page.dart";
import "package:google_nav_bar/google_nav_bar.dart";
import "package:testapp_booking/pages/HomePage.dart";
import "package:testapp_booking/pages/SettingsPage.dart";
import "package:testapp_booking/pages/login.dart";

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
      bottomNavigationBar: GNav(
        backgroundColor: Color.fromARGB(255, 201, 228, 171),
          color: Color.fromARGB(255, 97, 94, 94),
          activeColor: Color.fromARGB(255, 0, 0, 0),
          selectedIndex: index,
          onTabChange: (index) => setState(() {
                this.index = index;
              }),
          tabs: [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: Icons.calendar_today, text: 'Bookings'),
            GButton(icon: Icons.notifications, text: 'Notifications'),
            GButton(icon: Icons.settings, text: 'Settings'),
          ]),
    );
  }
}
