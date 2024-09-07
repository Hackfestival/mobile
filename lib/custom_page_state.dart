import 'package:flutter/material.dart';

import 'components/custom_button_navigation_bar.dart';

class CustomPageState<T extends StatefulWidget> extends State<T> {
  int _selectedIndex = 0;
  NavigationBarType type;
  List<Widget> pages;

  CustomPageState({ required this.type, required this.pages });

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: NavigationBarType.noAuth
      ),
    );
  }
}