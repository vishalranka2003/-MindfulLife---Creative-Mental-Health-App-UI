import 'package:flutter/material.dart';
import 'package:learn/MenuPage.dart';
import 'package:learn/UserPage.dart';
import 'package:learn/utils/exerciseField.dart';

import 'Home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;
  Widget currentWidgetPage = const Text("Menu");

  @override
  Widget build(BuildContext context) {
    switch (selectedIndex) {
      case 0:
        currentWidgetPage = HomePage();
        break;
      case 1:
        currentWidgetPage = const UserPage();
        break;
      case 2:
        currentWidgetPage = UserPage();
        break;
      case 3:
        currentWidgetPage = MenuPage();
        break;
    }

    return Scaffold(
      body: currentWidgetPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.blue[200],
        selectedItemColor: Colors.blue[600],
        items: const [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.apps_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.local_mall_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.person_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
