import 'package:flutter/material.dart';
import 'package:navigation_and_routing/home_page.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen", style: TextStyle(fontWeight: FontWeight.bold, )),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 1,
      ),
      body: Center(
        child: Column(
          children: [
            Text("This is Profile Screen"),
            ElevatedButton(onPressed: (){ // navigation.push er jonno
              Navigator.pop(context, MaterialPageRoute(builder: (context) => HomePage()));

            }, child: Text("Back to Home Screen")),
          ],
        ),
      ),

    );
  }
}