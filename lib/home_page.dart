import 'package:flutter/material.dart';
import 'package:flutter_journey3/practice_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return PracticePage();
            },
          ),
        );
      },
      child: const Text("Next Page"),
    ));
  }
}
