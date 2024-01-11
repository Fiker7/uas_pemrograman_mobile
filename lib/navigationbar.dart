import 'package:app_berita_flutter/pages/home.pages.dart';
import 'package:app_berita_flutter/profiledeveloper.dart';
import 'package:flutter/material.dart';

class Navigationbar extends StatefulWidget {
  const Navigationbar({super.key});

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: SizedBox(
          child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 217, 180, 147),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.account_circle),
              ),
            ],
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        body: <Widget>[
          Container(
            child: HomePage(),
          ),
          Container(
            child: profDev(),
          ),
        ][currentIndex]);
  }
}
