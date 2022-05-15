// ignore_for_file: prefer_const_constructors, camel_case_types
import 'package:flutter/material.dart';
import 'package:web_flutter/pages/style.dart';

class landingPage extends StatefulWidget {
  const landingPage({Key? key}) : super(key: key);

  @override
  State<landingPage> createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  int intSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            intSelectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: intSelectedIndex == index ? activeMenu : normalMenu,
            ),
            Container(
              width: 66,
              height: 2,
              decoration:
                  intSelectedIndex == index ? activeBoxLink : normalBoxLink,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            '/images/background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 30,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // NOTE: Navigation Bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'images/logo.png',
                        width: 72,
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          navItem(title: 'Guides', index: 0),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(title: 'Pricing', index: 1),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(title: 'Teams', index: 2),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(title: 'Stories', index: 3),
                        ],
                      ),
                      Image.asset(
                        'images/btn_login.png',
                        width: 163,
                        height: 53,
                      )
                    ],
                  ),
                  // NOTE: Content
                  SizedBox(
                    height: 76,
                  ),
                  Image.asset(
                    'images/ilustrasi.png',
                    height: 450,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/iconmore.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Scroll to Learn More',
                        style: content20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
