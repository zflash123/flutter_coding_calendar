import 'package:flutter/material.dart';
import 'package:flutter_coding_calendar/Screens/login_screen.dart';
import 'package:flutter_coding_calendar/Screens/register_screen.dart';
import 'package:flutter_coding_calendar/Screens/user_screen.dart';
import 'package:flutter_coding_calendar/Screens/home_screen.dart';
import 'package:flutter_coding_calendar/Screens/AddNewTask.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => TasksPage(),
        '/add': (context) => AddNewTask(),
        '/user': (context) => UserScreen(),
      },
    );
  }
}
