import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Booking Requests')),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),

            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blueAccent,
                child: const Icon(
                  Icons.person_2_outlined, // Replace with an appropriate icon for your auditorium
                  color: Colors.white,
                  size: 30,
                ),
              ),
              title: Text(
                'Booking $index',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  SizedBox(height: 5),
                  Text('Date: 2024-08-07', style: TextStyle(color: Colors.grey)),
                  Text('Reason: Induction', style: TextStyle(color: Colors.grey)),
                  Text('Status: Pending', style: TextStyle(color: Colors.grey)),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_circle_right,
                      color: Colors.black45,
                      size: 30,
                    ),
                    onPressed: () {
                      // Handle accept booking
                    },
                  ),
                
                ],
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
