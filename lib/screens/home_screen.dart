import 'package:chemistry_through_english/components/my_button.dart';
import 'package:chemistry_through_english/screens/level_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Function to send email
  Future<void> sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'zucker_ru@mail.ru',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Quiz Feedback',
        'body': 'Hello, I wanted to provide feedback on the quiz.',
      }),
    );

    if (!await launchUrl(emailUri)) {
      debugPrint('Could not launch $emailUri');
      throw Exception('Could not launch $emailUri');
    }
  }

  // Helper to encode query parameters
  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(41, 36, 59, 1),
      body: Column(
        children: [
          Center(
            child: Lottie.asset(
              'assets/chemistry.json',
              width: 200,
              height: 500,
            ),
          ),
          // Text Overlay
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Created by: ZAFAR ZAKIROVICH DADABAYEV',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 10),
                        TextButton(
                          onPressed: () async {
                            try {
                              await sendEmail();
                            } catch (e) {
                              debugPrint('Error launching email: $e');
                            }
                          },
                          child: const Text(
                            'Email: zucker_ru@mail.ru',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  MyButton(
                    text: "START",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LevelScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
