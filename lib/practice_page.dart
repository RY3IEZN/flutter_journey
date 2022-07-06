import 'package:flutter/material.dart';

class PracticePage extends StatefulWidget {
  PracticePage({Key? key}) : super(key: key);

  @override
  State<PracticePage> createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("practice page"),
      ),
      body: Column(
        children: [
          Image.asset("images/flutter.png"),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.purple,
          ),
          Container(
            color: Colors.purple,
            width: double.infinity,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            child: const Center(
              child: Text(
                "This is a text widget",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                print("button press");
              },
              child: Text("Elevated button")),
          OutlinedButton(
              onPressed: () {
                print("button outline press");
              },
              child: Text("outlined button")),
          TextButton(
              onPressed: () {
                print("button outline press");
              },
              child: Text("Text button")),
          GestureDetector(
            onTap: (() {
              print("this is a row");
            }),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.purple,
                ),
                Text("Text button"),
                Icon(Icons.local_fire_department, color: Colors.purple)
              ],
            ),
          )
        ],
      ),
    );
  }
}
