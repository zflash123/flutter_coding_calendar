import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:flutter_coding_calendar/Screens/register_screen.dart';
import 'dart:convert';
import 'package:flutter_coding_calendar/network/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  var email, password;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _secureText = true;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  _showMsg(msg) {
    final snackBar = SnackBar(
      content: Text(msg),
    );
    _scaffoldKey.currentState!.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 2),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Center(
                        child: Container(
                            width: 200,
                            height: 150,
                            /*decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50.0)),*/
                            child: Image.asset('assets/image/meeting.png')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                          cursorColor: Colors.blue,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                              hintText:
                                  'Enter valid email id as abc@gmail.com'),
                          validator: (emailValue) {
                            if (emailValue!.isEmpty) {
                              return 'Please enter your email';
                            }
                            email = emailValue;
                            return null;
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 0),
                      child: TextFormField(
                          cursorColor: Colors.blue,
                          keyboardType: TextInputType.text,
                          obscureText: _secureText,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Enter secure password',
                            suffixIcon: IconButton(
                              onPressed: showHide,
                              icon: Icon(_secureText
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                          ),
                          validator: (passwordValue) {
                            if (passwordValue!.isEmpty) {
                              return 'Please enter your password';
                            }
                            password = passwordValue;
                            return null;
                          }),
                    ),
                    TextButton(
                      onPressed: () {
                        //TODO FORGOT PASSWORD SCREEN GOES HERE
                      },
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 10),
                          child: Text(
                            _isLoading ? 'Loading..' : 'Login',
                            textDirection: TextDirection.ltr,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _login();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => RegisterScreen(
                              // Goback: (int) {},
                              )));
                },
                child: const Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _login() async {
    setState(() {
      _isLoading = true;
    });
    var data = {'email': email, 'password': password};

    var res = await Network().auth(data, '/v1/login');
    var body = json.decode(res.body);
    if (body['success']) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', json.encode(body['token']));
      localStorage.setString('user', json.encode(body['user']));
      Navigator.pushReplacement(
        context,
        new MaterialPageRoute(builder: (context) => TasksPage()),
      );
    } else {
      _showMsg(body['message']);
    }

    setState(() {
      _isLoading = false;
    });
  }
}
