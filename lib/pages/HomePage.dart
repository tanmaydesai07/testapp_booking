import 'package:flutter/material.dart';
import 'package:testapp_booking/pages/calendar.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Admin Page",
          textAlign: TextAlign.left,
        ),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
      body: content(),
    );
  }

  Widget content() {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Calendar()),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(16.0)),
        ),
        child: Text(
          "Hello",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
