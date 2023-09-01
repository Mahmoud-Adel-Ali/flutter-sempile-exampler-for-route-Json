// import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, unused_import

import 'dart:convert';

import 'package:flutter_api_json_async_await/pages/page1.dart';
import 'package:flutter_api_json_async_await/pages/page2.dart';
import 'package:http/http.dart';

//to start any Application ,you should write the code
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // home: ApiJsonAsyncAwait(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context)  => const Page1(),
        '/page2': (context)  => const Page2(),
      },
    );
  }
}
