import 'package:airbnb_redeisgn/app_style.dart';
import 'package:airbnb_redeisgn/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}
class _BottomBarState extends State<BottomBar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentPageIndex,
          onDestinationSelected: (value) {
            setState(() {
              currentPageIndex = value;
            });
          },
          backgroundColor: kWhiteColor,
          destinations: <Widget>[
            NavigationDestination(
              icon: SvgPicture.asset("assets/icons/search.svg"),
              label: "Explore",
            ),
            NavigationDestination(
              icon: SvgPicture.asset("assets/icons/heart.svg"),
              label: "SAVED",
            ),
            NavigationDestination(
              icon: SvgPicture.asset("assets/icons/airbnb1.svg"),
              label: "TRIPS",
            ),
            NavigationDestination(
              icon: SvgPicture.asset("assets/icons/chat.svg"),
              label: "INBOX",
            ),
            NavigationDestination(
              icon: SvgPicture.asset("assets/icons/profile.svg"),
              label: "PROFILE",
            ),
          ],
        ),
        body: <Widget>[
          const HomePage(),
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: const Text("2 page"),
          ),
          Container(
            color: Colors.purple,
            alignment: Alignment.center,
            child: const Text("3 page"),
          ),
          Container(
            color: Colors.pink,
            alignment: Alignment.center,
            child: const Text("4 page"),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text("5 page"),
          )
        ][currentPageIndex]);
  }
}
