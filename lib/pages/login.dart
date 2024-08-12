import 'package:flutter/material.dart';
import 'package:testapp_booking/pages/HomePage.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Container(
                  height: 200,
                  margin: EdgeInsets.all(50),
                  child: Image.asset('assets/images/Login.jpg')),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(24, 27, 27, 1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}
