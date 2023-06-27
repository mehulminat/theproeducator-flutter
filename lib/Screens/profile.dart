import 'package:flutter/material.dart';
import 'package:proeducator/Screens/chatScreen.dart';

import 'package:proeducator/Screens/dashboard.dart';
import 'package:proeducator/Screens/homescreen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 3;

  List<String> bottomNavBarIconPaths = [
    'assets/home.png',
    'assets/chat.png',
    'assets/dashboard.png',
    'assets/profile.png',
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 35,
            child: Image.asset("assets/logo.png"),
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: false,
        toolbarHeight: 50,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              width: width,
              height: height / 11,
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    color: Colors.black,
                    size: 50,
                  ),
                  SizedBox(
                    width: width / 26,
                  ),
                  Text(
                    "Prachi Shah",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: width / 3,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              width: width,
              height: height / 4.2,
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/documents.png"),
                      Text(
                        "Documents",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    thickness: 1.5,
                    height: 2,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/messages.png"),
                      Text(
                        "Give Us Feedback",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    thickness: 1.5,
                    height: 2,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/settings.png"),
                      Text(
                        "Settings",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: width / 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "LEGAL",
              style: TextStyle(fontFamily: 'Poppins', fontSize: 25),
            ),
          ),
          SizedBox(
            height: width / 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              width: width,
              height: height / 6,
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/terms_of_sevices.png"),
                      Text(
                        "Terms Of Services",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    thickness: 1.5,
                    height: 2,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/privacy_policy.png"),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height / 40,
          ),
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: width / 4,
            height: height / 18,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffD9D9D9),
            ),
            child: Center(
              child: Row(
                children: [
                  Text(
                    "Logout",
                    style: TextStyle(
                        fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/logout.png"),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });

          // Navigate to different screens based on the selected index
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
              // Navigate to HomeScreen
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatScreen()));
              // Navigate to ChatScreen
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()));
              // Navigate to DashboardScreen
              break;
            case 3:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
              // Navigate to ProfileScreen
              break;
          }
        },
        items: List.generate(bottomNavBarIconPaths.length, (index) {
          return BottomNavigationBarItem(
            icon: Image.asset(
              bottomNavBarIconPaths[index],
              width: 24,
              height: 24,
            ),
            label: '',
          );
        }),
      ),
    );
  }
}
