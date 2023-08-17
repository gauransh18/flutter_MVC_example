// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, library_private_types_in_public_api

import 'package:flutter/material.dart';


class Services extends StatefulWidget {
  const Services({super.key});

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFecfdf3),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          "App Development",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Text(
                          'Develop beautiful fast mobile applications.',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFECFDF3),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          "Website Development",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Text(
                          'Develop beautiful fast websites.',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFECFDF3),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          "Microservices Development",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Text(
                          'Develop fast microservices for your applications.',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ]),
              ),
            ],
          ),
        ),
        Container(
          height: 20,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                Container(
                  width: 20,
                  height: 10,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: _currentPage == i
                        ? const Color(0xff98a2b3)
                        : const Color(0xffd9d9d9d9),
                    shape: BoxShape.circle,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}