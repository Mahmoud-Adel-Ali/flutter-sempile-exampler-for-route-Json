// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page2",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,{"country": "..Egypt..", "currentTime": "10:30 am"});
              },
              child: Text(
                "   Get data from Egypt   ",
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,{"country": "..Canada..", "currentTime": "9:25 pm"});
              },
              child: Text(
                "   Get data from Canada  ",
                style: TextStyle(fontSize: 20,color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.cyanAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
