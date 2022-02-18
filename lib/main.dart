import 'package:flutter/material.dart';

void main() {
  runApp(const ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ScoreApp",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({Key? key}) : super(key: key);

  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;

  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      if(number>0){
      number--;
      }
    });
  }

  void counterReset() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.restore_outlined),
        onPressed: counterReset,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const Center(
              child: Text(
            "Score is",
            style: TextStyle(
                color: Colors.cyanAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            number.toString(),
            style: const TextStyle(
                color: Colors.cyanAccent,
                fontSize: 60,
                fontWeight: FontWeight.bold),
          )),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, //aligns the buttons horizontally
            children: [
              ElevatedButton(
                child: const Text(
                  "Increase",
                  style: TextStyle(
                      color: Colors.white,
                  fontSize: 18),
                ),
                onPressed: increaseNumber,
              ),
              const SizedBox(
                width: 25,
              ),
              ElevatedButton(
                child: const Text(
                  "Decrease",
                  style: TextStyle(
                      color: Colors.white,
                  fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red.shade800
                ),
                onPressed: decreaseNumber,
              ),
            ],
          )
        ],
      ),
    );
  }
}
