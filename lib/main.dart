import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:testapp_booking/firebase_options.dart';
import 'package:testapp_booking/pages/HomePage.dart';
import 'package:testapp_booking/pages/login.dart';
import 'package:testapp_booking/pages/bottomnav.dart';

Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform,);
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
