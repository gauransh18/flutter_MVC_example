// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'components/services.dart';

class ServicePageView extends StatelessWidget {
  const ServicePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Suvaye Tech",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Services",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {}, //TODO : See more onPressed Func
                        child: Text("See more >",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF027A48))))
                  ],
                ),

                // Services
                Container(
                  height: 200,
                  child: Services(),
                ),

                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Outline",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {}, //TODO : See more onPressed Func
                        child: Text("See more >",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF027A48))))
                  ],
                ),

                Container(
                  height: 200,
                  child: GridView.count(
                    crossAxisCount: 2, // 2 columns
                    mainAxisSpacing: 16.0,
                    crossAxisSpacing: 16.0,
                    childAspectRatio: 2,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF9F5FF),
                        ),
                        child: Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.smartphone_rounded,
                                    color: Color(0xFF8b2cf5)),
                                SizedBox(width: 10),
                                Text(
                                  'Apps',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFFDF2FA),
                        ),
                        child: Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.web, color: Color(0xFFe1ade4)),
                                SizedBox(width: 10),
                                Text(
                                  'Websites',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFFFFAf5),
                        ),
                        child: Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.design_services_rounded,
                                    color: Color(0xFFf29d39)),
                                SizedBox(width: 10),
                                Text(
                                  'Designs',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF0F9FF),
                        ),
                        child: Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.person_4_outlined,
                                    color: Color(0xFF7ba7d7)),
                                SizedBox(width: 10),
                                Text(
                                  'Consultant',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      
    );
  }
}
