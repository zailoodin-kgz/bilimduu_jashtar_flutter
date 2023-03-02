import 'package:flutter/material.dart';

import 'result_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyFirstScreen(),
    );
  }
}

class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({super.key});

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  int number = 0;

  Function? onTap() {
    return null;
  }

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
          elevation: 2,
        
          title: const Text(
            '1 Тапшырма',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        endDrawer: const Drawer(
          backgroundColor: Colors.blueAccent,
          semanticLabel: "Heloo",
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    'Сан: $number',
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        setState(() {
                          number--;
                        });
                      },
                      child: const Icon(Icons.remove),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        setState(() {
                          number++;
                        });
                      },
                      child: const Icon(Icons.add),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                FloatingActionButton(
                  
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(number: number),
                      ),
                    );
                  },
                  child: const Center(
                    child:  Icon(
                      Icons.next_plan,
                      
                      color: Color.fromARGB(255, 255, 255, 255),
                      
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
