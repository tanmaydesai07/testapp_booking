import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:testapp_booking/firebase_options.dart';
import 'package:testapp_booking/request.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  List<RequestList> requestList = [];

  @override
  void initState() {
    fetchrecords(); // Fetch records from Firebase

    super.initState();
  }

  void fetchrecords() async {
    var records = await FirebaseFirestore.instance.collection('requests').get();
    maprecords(records); // Map records to widgets
  }

  void maprecords(QuerySnapshot<Map<String, dynamic>> records) {
   var list = records.docs.map((item) => 
          RequestList(            // Add items to list
              id: item.id,
              name: item['name'],
              date: item['date'],
              place: item['place'],
              time: item['time'],
              status: item['status'],
              reason: item['reason'])
        ).toList();

        setState(() {
          requestList = list;
        });
  }

  @override
  Widget build(BuildContext context) { // Ensure this method is implemented
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Booking Requests')),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: requestList.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        
        itemBuilder: (BuildContext context, int index) {
          var request = requestList[index]; // Fetch the current item
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
                backgroundColor: Colors.black,
                child: const Icon(
                  Icons.person_2_outlined, // Replace with an appropriate icon
                  color: Colors.white,
                  size: 30,
                ),
              ),

              title: Text(
                request.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),

              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 5),
                  Text('Date: ${request.date}', style: TextStyle(color: Colors.grey)),
                  if (request.reason != null)
                    Text('Reason: ${request.reason}', style: TextStyle(color: Colors.grey)),
                  Text('Status: ${request.status}', style: TextStyle(color: Colors.grey)),
                ],
              ),

              trailing: IconButton(
                icon: const Icon(
                  Icons.arrow_circle_right,
                  color: Colors.black45,
                  size: 30,
                ),

                onPressed: () {
                  // Navigate to booking page (Fayaz's Page)
                  // Handle booking action
                },

              ),
            ),
          );
        },
        

      ),
    );
  }
}
