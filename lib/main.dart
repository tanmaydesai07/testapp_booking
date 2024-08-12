import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:testapp_booking/pages/HomePage.dart';
import 'package:testapp_booking/pages/login.dart';
import 'package:testapp_booking/pages/mainHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      routes: {
        
        '/': (context) => mainNavHome(),
        '/Login': (context) => Login(),
      },
    );
  }
}

class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => mainNav();
}

class mainNav extends State<bottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
      ]),
    );
  }
}
