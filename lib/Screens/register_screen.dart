import 'package:flutter/material.dart';
import 'package:flutter_coding_calendar/Screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key, required Null Function(dynamic int) Goback})
      : super(key: key);

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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(117, 76, 117, 63),
                child: Text('Sign Up',
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
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
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => LoginScreen(
                                  Goback: (int) {},
                                )));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
