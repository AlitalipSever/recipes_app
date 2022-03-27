import 'package:flutter/material.dart';
import 'package:recipes_app/pages/navpages/bar_item_page.dart';
import 'package:recipes_app/pages/navpages/home_page.dart';
import 'package:recipes_app/pages/navpages/my_page.dart';
import 'package:recipes_app/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage()
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: "text"),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "as"),
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined), label: "asa"),
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined), label: "sasa")
          ]),
    );
  }
}
