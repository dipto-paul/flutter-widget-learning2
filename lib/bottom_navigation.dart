import 'package:flutter/material.dart';
import 'package:navigation_and_routing/home_page.dart';
import 'package:navigation_and_routing/settings_screen.dart';
import 'package:navigation_and_routing/profile_screen.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int selected_index = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> screen = [HomePage(), SettingsScreen(), ProfileScreen()];

    return Scaffold(
      appBar: AppBar(
        //title: Text("Navigation and Routing", style: TextStyle(fontWeight: FontWeight.bold, )),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 1,
      ),

      body: screen[selected_index], // for changes screens
      //body: selected_index == 0 ? HomePage() : SettingsScreen(), // condition for changes


      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.lightBlue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,

          currentIndex: selected_index,
          onTap: (index){
            setState(() {
              selected_index = index;
            });

          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),

    );
  }
}