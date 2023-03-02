import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.number,
  });

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.red,
          Color.fromARGB(255, 44, 166, 214),
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 8,
          shadowColor: Colors.red,
          title: const Text(
            '1 Тапшырма',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 28,
            width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 9, 255, 0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Сан: $number',
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
