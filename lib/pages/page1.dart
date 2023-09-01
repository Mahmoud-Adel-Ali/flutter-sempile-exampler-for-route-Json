// ignore_for_file: prefer_const_constructors, sort_child_properties_last, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  Map time = {"country": "..Egypt..", "currentTime": "10:30 am"};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page1",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                dynamic receivedDataFromPage2 =
                    await Navigator.pushNamed(context, '/page2');

                setState(() {
                  if (receivedDataFromPage2 == null) {
                    time = {
                      "country": "choise country",
                      "currentTime": "00:00 "
                    };
                  } else
                    time = receivedDataFromPage2;
                });
                // print(receivedDataFromPage2);
              },
              child: Text("   Go to page 2   "),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              time["currentTime"],
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              time["country"],
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
