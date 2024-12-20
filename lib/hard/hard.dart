import 'package:chemistry_through_english/components/my_button.dart';
import 'package:chemistry_through_english/hard/hard_test_1.dart';
import 'package:chemistry_through_english/hard/hard_test_2.dart';
import 'package:chemistry_through_english/hard/hard_test_3.dart';
import 'package:chemistry_through_english/hard/hard_test_4.dart';
import 'package:chemistry_through_english/hard/hard_test_5.dart';
import 'package:chemistry_through_english/hard/hard_test_6.dart';
import 'package:chemistry_through_english/hard/hard_test_7.dart';
import 'package:chemistry_through_english/hard/hard_test_8.dart';
import 'package:chemistry_through_english/hard/hard_test_9.dart';
import 'package:flutter/material.dart';

class Hard extends StatelessWidget {
  const Hard({super.key});

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
                          builder: (context) => const HardTests1()));
                }),
            MyButton(
                text: "Test 2",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HardTests2()));
                }),
            MyButton(
                text: "Test 3",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HardTests3()));
                }),
            MyButton(
                text: "Test 4",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HardTests4()));
                }),
            MyButton(
                text: "Test 5",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HardTests5()));
                }),
            MyButton(
                text: "Test 6",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HardTests6()));
                }),
            MyButton(
                text: "Test 7",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HardTests7()));
                }),
            MyButton(
                text: "Test 8",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HardTests8()));
                }),
            MyButton(
                text: "Test 9",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HardTests9()));
                }),
          ],
        ),
      ),
    );
  }
}
