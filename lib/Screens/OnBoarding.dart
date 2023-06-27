import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:proeducator/Screens/loginscreen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 2;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  void _goToNextPage() {
    if (_currentPage < _numPages - 1) {
      setState(() {
        _currentPage++;
      });
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          child: PageView(
            physics: ClampingScrollPhysics(),
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: <Widget>[
              Stack(
                children: [
                  Image.asset(
                    "assets/logo+onboarding.png",
                    height: MediaQuery.of(context).size.height - 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 60),
                    child: Image.asset(
                      "assets/logo.png",
                      height: 20,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 230, left: 20, right: 20),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 250, // Adjust the width as needed
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'your ',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize:
                                        30, // Adjust the font size as needed
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Study',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',

                                    color: Colors.yellow,
                                    fontSize:
                                        30, // Adjust the font size as needed
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: ' Abroad Expert',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',

                                    color: Colors.yellow,
                                    fontSize:
                                        30, // Adjust the font size as needed
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            maxLines:
                                2, // Ensure the text stays within one line
                          ),
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 160, left: 20, right: 20),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        "assets/logo.png",
                        height: 50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 70),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Container(
                              width: MediaQuery.of(context).size.width / 5,
                              height:
                                  (MediaQuery.of(context).size.height / 9) - 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color(0xffFF9900),
                                  Color(0xffEBFB8D),
                                ]),
                              ),
                              child: Center(
                                child: Text(
                                  "Skip",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              width: MediaQuery.of(context).size.width / 5,
                              height:
                                  (MediaQuery.of(context).size.height / 9) - 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color(0xffFF9900),
                                  Color(0xffEBFB8D),
                                ]),
                              ),
                              child: MaterialButton(
                                onPressed: _goToNextPage,
                                child: Center(
                                  child: Text(
                                    "Next",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      "assets/logo.png",
                      height: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 100),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/travel 1.png",
                              height: 80,
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Explore Top Destinations',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.5),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    width: 235,
                                    child: Wrap(
                                      alignment: WrapAlignment.start,
                                      children: [
                                        Text(
                                          'We have partnered with Universities , agencies and counsellors over 27+ countries to provide what best we can, for you',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.grey,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/Vector.png",
                              height: 80,
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Discover Top Universities',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    width: 235,
                                    child: Wrap(
                                      alignment: WrapAlignment.start,
                                      children: [
                                        Text(
                                          'We have partnered with various universities,agencies, counsellors and others to provide the best university for you.,',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 15,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/analytics 1.png",
                              height: 80,
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Qualified Counsellors and Free Consultation',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    width: 235,
                                    child: Wrap(
                                      alignment: WrapAlignment.start,
                                      children: [
                                        Text(
                                          'We are British Council Certified Study Abroad Experts.You may avail free consultation to get admission in your dream university',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
              child: Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: (MediaQuery.of(context).size.height / 8.2) - 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Color(0xffFF9900),
                      Color(0xffEBFB8D),
                    ]),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => LoginScreen()));
                    },
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ))
          : Text(''),
    );
  }
}
