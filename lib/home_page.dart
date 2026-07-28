import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selected_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation and Routing", style: TextStyle(fontWeight: FontWeight.bold, )),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 1,
      ),
      body: Center(
        child: Text("This is Home Screen"),
      ),
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
      ]),

    );
  }
}