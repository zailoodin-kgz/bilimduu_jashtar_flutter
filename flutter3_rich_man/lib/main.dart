import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Sofia',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffECB90B),
        appBar: AppBar(
          title: const Text(
            'Тапшырма 3',
            style: TextStyle(
                color: Colors.black, fontFamily: 'assets/fonts/Sofia-Regular.ttf', fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xffECB90B),
          elevation: 15,
          shadowColor: Colors.black38,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'I\'m Rich',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
                ),
                Image.asset(
                  'images/brilliant.png',
                  width: 300,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
