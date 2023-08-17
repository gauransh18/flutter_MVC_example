// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'controllers/app_controller.dart';
import 'views/chat_page.dart';
import 'views/service_page.dart';
import 'views/today_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppController _controller = AppController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Image.asset(
            'assets/logo.png',
            width: 50,
            height: 50,
            fit: BoxFit.contain,
          ),
          title: Text('Suvaye',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal)),
          actions: [
            Stack(
              children: [
                IconButton(
                    icon: Icon(Icons.notifications, color: Colors.black),
                    onPressed: () {
                      //TODO : Notification onPressed Func
                    }),

                // Notification dot
                Positioned(
                  top: 5,
                  right: 5,
                  child: _controller.model.hasNotifications
                      ? Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                        )
                      : Container(),
                )
              ],
            ),
          ],
        ),
        body: Column(
          children: [
            if (_controller.model.currentIndex == 0) TodayPageView(),
            if (_controller.model.currentIndex == 1) ServicePageView(),
            if (_controller.model.currentIndex == 2) ChatPageView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFF6941c6),
          currentIndex: _controller.model.currentIndex,
          onTap: (index) {
            setState(() {
              _controller.onTabChanged(index);
            });
          },
          //_controller.onTabChanged,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.today_outlined),
              label: 'Today',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded),
              label: 'Services',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              label: 'Chat',
            ),
          ],
        ),
      ),
    );
  }
}

