
import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 150, 190, 19),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 233, 237, 218),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              margin: EdgeInsets.all(10),
              child: Row(children: [
               
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularProfileAvatar(
                      '',
                      child: Image.asset('assets/images/profile_pic.png'),
                      borderColor: Color.fromARGB(255, 0, 0, 0),
                      borderWidth: 0.5,
                      elevation: 5,
                      radius: 45,
                    ),
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text("Username",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      Text('Edit Your Profile   >')
                    ],
                  )
                
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 233, 237, 218),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.fromLTRB(10,5,10,5),
              child: Row(
                 children: [
                  Text("Log Out",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10,),
                   Icon(Icons.logout),
                ],
              )
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
