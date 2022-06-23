import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_coding_calendar/Screens/login_screen.dart';
import 'package:flutter_coding_calendar/Screens/user_edit_screen.dart';
import 'package:flutter_coding_calendar/Screens/user_help_center_screen.dart';
import 'package:flutter_coding_calendar/constants.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(color: Color(0xFF757575)),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF757575),
          ),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    margin: EdgeInsets.only(bottom: 20, top: 30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://cdn2.iconfinder.com/data/icons/instagram-ui/48/jee-74-512.png'),
                      ),
                    ),
                  ),
                  Text(
                    'mas brigas',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFF757575),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'masbrigas@gmail.com',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: FlatButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Color(0xFFF5F6F9),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const EditUserScreen();
                }));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Text(
                      'Edit Profile',
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: FlatButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Color(0xFFF5F6F9),
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Text(
                      'Notifications',
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: FlatButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Color(0xFFF5F6F9),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HelpCenterScreen();
                }));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.help_center,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Text(
                      'Help Center',
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: FlatButton(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Color(0xFFF5F6F9),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen(
                    Goback: (int) {},
                  );
                }));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Text(
                      'Log Out',
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
