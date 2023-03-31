import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice Game',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 10, 0),
        appBar: AppBar(
          title: Center(
            child: Text('DICE'),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstPlayer = 1;
  int secondPlayer = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      '№1 Оюнчу',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 218, 247)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset(
                      'images/dice$firstPlayer.png',
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Сиздин сан $firstPlayer ',
                      style: TextStyle(
                          color: firstPlayer > secondPlayer
                              ? Colors.green
                              : Colors.red,
                          fontSize: firstPlayer > secondPlayer ? 20 : 16),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    firstPlayer > secondPlayer ? '>' : '<',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 55,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '№2 Оюнчу',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 218, 247)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset(
                      'images/dice$secondPlayer.png',
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Сиздин сан $secondPlayer',
                      style: TextStyle(
                          color: secondPlayer > firstPlayer
                              ? Colors.green
                              : Colors.red,
                          fontSize: secondPlayer > firstPlayer ? 20 : 16),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 255, 8)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: changeDice,
                  child: Text(
                    'Ойноо',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void changeDice() {
    setState(
      () {
        secondPlayer = Random().nextInt(6) + 1;
        firstPlayer = Random().nextInt(6) + 1;
      }
    );
  }
}
