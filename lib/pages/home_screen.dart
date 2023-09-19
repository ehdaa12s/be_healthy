import 'package:be_healthy/chat_pages/chat_screen.dart';
import 'package:be_healthy/constant/constant.dart';
import 'package:be_healthy/pages/advices%20_screen.dart';
import 'package:be_healthy/pages/emergency_screen.dart';
import 'package:be_healthy/pages/home.dart';
import 'package:be_healthy/pages/setting_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class  BottomNavagertorBarScreen extends StatefulWidget {
 const  BottomNavagertorBarScreen({Key? key}) : super(key: key);
  static String id = "BottomNavagetorBarScreen";
 // final email = ModalRoute.of(context as BuildContext)!.settings.arguments;

  @override
  State<BottomNavagertorBarScreen> createState() =>
      _BottomNavagertorBarScreenState();
}

class _BottomNavagertorBarScreenState extends State<BottomNavagertorBarScreen> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  int pageindex = 0;
  final List<Widget> _screens = [
    const SettingScreen(),
    const EmergencyScreen(),
    const HomeScreen(),
    ChatScreen(),
    const AdvicesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[pageindex],
      bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: pageindex,
          height: 50.0,
          items: const <Widget>[
            Icon(Icons.settings, size: 30, color: Colors.white),
            Icon(Icons.emergency, size: 30, color: Colors.white),
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.message, size: 30, color: Colors.white),
            Icon(Icons.format_align_justify, size: 30, color: Colors.white),
          ],
          color: kprimaryColor,
          buttonBackgroundColor: kprimaryColor,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              pageindex = index;
            });

            (index) => true;
          }),
    );
  }
}
