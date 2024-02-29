import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weight_tracker/views/graph.dart';
import 'package:flutter_weight_tracker/views/history.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 0;
  Widget _currentScreen = GraphScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentScreen,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.black,
            size: 35,
          )),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: Colors.purple,
        inactiveColor: Colors.black,
        backgroundColor: Colors.grey.shade200,
        gapLocation: GapLocation.center,
        icons: const [Icons.show_chart, Icons.history],
        iconSize: 30,
        activeIndex: _currentTab,
        onTap: (int) {
          setState(() {
            _currentTab = int;
            _currentScreen = (int == 0) ? GraphScreen() : HistoryScreen();
          });
        },
      ),
    );
  }
}
