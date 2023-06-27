import 'package:flutter/material.dart';
import 'package:proeducator/Screens/chatScreen.dart';
import 'package:proeducator/Screens/dashboard.dart';
import 'package:proeducator/Screens/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageUrls = [
    'assets/flag1.jpeg',
    'assets/flag2.png',
    'assets/flag3.gif',
    'assets/flag4.png',
    'assets/flag5.jpeg',
  ];

  final List<String> Services = [
    'assets/Test Preparation.png',
    'assets/Expert Councelling.png',
    'assets/Country Selection.png',
  ];

  int _currentIndex = 0;

  List<String> bottomNavBarIconPaths = [
    'assets/home.png',
    'assets/chat.png',
    'assets/dashboard.png',
    'assets/profile.png',
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "Your Study Abroad Expert",
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 29, color: Colors.orange),
              ),
              SizedBox(height: 30),
              Text(
                "British Council Certified Study Abroad Agent. We are obsessed with your success.",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.3,
                    height: (MediaQuery.of(context).size.height / 8.2) - 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        colors: [Color(0xffFF9900), Color(0xffEBFB8D)],
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (builder) => SignUpscreen()));
                      },
                      child: Center(
                        child: Text(
                          "Register for webinar",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 19),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.3,
                    height: (MediaQuery.of(context).size.height / 8.2) - 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        colors: [Color(0xffFF9900), Color(0xffEBFB8D)],
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (builder) => SignUpscreen()));
                      },
                      child: Center(
                        child: Text(
                          "Talk to an Expert",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: width / 11),
                    width: width * 0.9,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Explore Top Study",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        " Destination",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: width * 1,
                child: Text(
                  "We have partnered with Universities, agencies, counsellors over 27+ countries to provide what best we can, for you",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(imageUrls.length, (index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: width * 0.60,
                      height: height * 0.23,
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Card(
                          child: Image.asset(
                            imageUrls[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: width / 11),
                    width: width * 0.9,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Our Services",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: width * 1,
                child: Text(
                  "Your adventure starts here. We offer these services to help you get admitted to your dream university.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(Services.length, (index) {
                  String upperlabel;
                  switch (index) {
                    case 0:
                      upperlabel = 'Test';
                      break;
                    case 1:
                      upperlabel = 'Expert';
                      break;
                    case 2:
                      upperlabel = 'Country';
                      break;
                    default:
                      upperlabel = '';
                  }
                  String bellowlabel;
                  switch (index) {
                    case 0:
                      bellowlabel = 'Preparation';
                      break;
                    case 1:
                      bellowlabel = 'Counselling';
                      break;
                    case 2:
                      bellowlabel = 'Selection';
                      break;
                    default:
                      bellowlabel = '';
                  }

                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      children: [
                        Image.asset(
                          Services[index],
                        ),
                        SizedBox(height: 8),
                        Text(
                          upperlabel,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 8),
                        Text(
                          bellowlabel,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
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
                  MaterialPageRoute(builder: (context) => ChatBotApp()));
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
