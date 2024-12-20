import 'package:chemistry_through_english/components/home_component.dart';
import 'package:chemistry_through_english/components/my_button.dart';
import 'package:chemistry_through_english/easy/easy_quiz_page_1.dart';
import 'package:chemistry_through_english/hard/hard.dart';
import 'package:chemistry_through_english/medium/medium.dart';
import 'package:chemistry_through_english/additional/additional_test.dart';
import 'package:flutter/material.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(41, 36, 59, 1),
      body: Center(
        child: SingleChildScrollView(
          // Makes the content scrollable
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center content
              children: [
                const Text(
                  "Welcome to Chemistry Through English",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(58, 255, 210, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20), // Adds space between widgets
                const HomeComponent(),
                const SizedBox(height: 20),
                MyButton(
                    text: "Easy",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EasyQuizPage()));
                    }),
                const SizedBox(height: 10),
                MyButton(
                    text: "Medium",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Medium()));
                    }),
                const SizedBox(height: 10),
                MyButton(
                    text: "Hard",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Hard()));
                    }),
                const SizedBox(height: 10),
                MyButton(
                    text: "Additional",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AdditionalTest()));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
