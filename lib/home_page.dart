import 'package:flutter/material.dart';
import 'package:navigation_and_routing/profile_screen.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen", style: TextStyle(fontWeight: FontWeight.bold, )),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 1,
      ),
      body: Center(
        child: Column(
           children: [
             Text("This is Home Screen"),
             ElevatedButton(onPressed: (){ // navigation.push er jonno
               Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));

             }, child: Text("Go to Profile")),
           ],
        ),
      ),


    );
  }
}