import 'package:flutter/material.dart';

class MyNavigation extends StatefulWidget {
  MyNavigation({Key? key}) : super(key: key);
  @override
  State<MyNavigation> createState() => Navigation();
}

class Navigation extends State<MyNavigation> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      currentIndex: _currentindex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'user',
          backgroundColor: Colors.blue,
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentindex = index;
          if (_currentindex == 0) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (_currentindex == 1) {
            Navigator.pushReplacementNamed(context, '/user');
          }
        });
      },
    );
  }
}
