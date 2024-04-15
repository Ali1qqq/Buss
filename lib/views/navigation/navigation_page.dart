import 'package:untitled/utils/app_style.dart';
import 'package:untitled/views/search/search_page.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  int selectedIndex = 1;
  static final List<Widget> _widgetOptions = <Widget>[
     Container(),
     const SearchScreen(),
     Container(),
    Container()
  ];

  onItemTapped(int index) {
    selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,
      body: _widgetOptions[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTapped,
        type:BottomNavigationBarType.fixed ,
        currentIndex: selectedIndex,
        elevation: 10,
        selectedItemColor: primary,
        unselectedItemColor: const Color(0xFF526480),

        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_preview_link_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_preview_link_filled),
              label: "Trips"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_search_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_help_circle_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_help_circle_filled),
              label: "Help"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_person_regular,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Account"),

        ],
      ),
    );
  }
}
