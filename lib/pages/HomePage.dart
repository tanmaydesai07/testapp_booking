import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Homepage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 150, 190, 19),
      ),
     
    );
  }
}