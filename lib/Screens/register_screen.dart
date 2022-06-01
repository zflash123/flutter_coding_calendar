import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'register',
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(117, 76, 117, 63),
              child: Text('Sign Up',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 0, 15, 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name'),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Enter your name'),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 0, 15, 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email Address'),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.mail),
                        labelText: 'Enter your email address'),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 0, 15, 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Password'),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Enter your password'),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 0, 15, 115),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                ),
                onPressed: () {},
                child: Text('CREATE ACCOUNT'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
