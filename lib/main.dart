import 'package:flutter/material.dart';
import 'package:timer_app/screens/timer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartTimer(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StartTimer extends StatelessWidget {
  const StartTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Timer",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        elevation: 2,
      ),
      body: Container(
        color: Colors.black12,
        child: Center(
          child: ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(2),
              minimumSize: MaterialStateProperty.all(
                const Size(270, 50),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TimerScreen(),
                  ));
            },
            child: const Text(
              "Start Timer",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
