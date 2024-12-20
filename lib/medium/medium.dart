import 'package:chemistry_through_english/components/my_button.dart';
import 'package:chemistry_through_english/medium/medium_test_1.dart';
import 'package:chemistry_through_english/medium/medium_test_2.dart';
import 'package:chemistry_through_english/medium/medium_test_3.dart';
import 'package:chemistry_through_english/medium/medium_test_4.dart';
import 'package:chemistry_through_english/medium/medium_test_5.dart';
import 'package:chemistry_through_english/medium/medium_test_6.dart';
import 'package:chemistry_through_english/medium/medium_test_7.dart';
import 'package:chemistry_through_english/medium/medium_test_8.dart';
import 'package:flutter/material.dart';

class Medium extends StatelessWidget {
  const Medium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(41, 36, 59, 1),
      appBar: AppBar(
        title: const Text('Chemistry Quiz'),
        backgroundColor: const Color.fromRGBO(58, 255, 210, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyButton(
                text: "Test 1",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MediumTest1()));
                }),
            MyButton(
                text: "Test 2",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MediumTest2()));
                }),
            MyButton(
                text: "Test 3",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MediumTest3()));
                }),
            MyButton(
                text: "Test 4",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MediumTest4()));
                }),
            MyButton(
                text: "Test 5",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MediumTest5()));
                }),
            MyButton(
                text: "Test 6",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MediumTest6()));
                }),
            MyButton(
                text: "Test 7",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MediumTest7()));
                }),
            MyButton(
                text: "Test 8",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MediumTest8()));
                }),
          ],
        ),
      ),
    );
  }
}
