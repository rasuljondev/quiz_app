import 'package:chemistry_through_english/hard/hard.dart';
import 'package:flutter/material.dart';

class ReusableHardTests extends StatefulWidget {
  final String pageTitle;
  final String textTitle;
  final String longText;
  final List<Map<String, dynamic>> questions;

  const ReusableHardTests({
    super.key,
    required this.pageTitle,
    required this.textTitle,
    required this.longText,
    required this.questions,
  });

  @override
  _ReusableHardTestsState createState() => _ReusableHardTestsState();
}

class _ReusableHardTestsState extends State<ReusableHardTests> {
  final Map<int, String?> userAnswers = {}; // To store user-selected answers
  bool isSubmitted = false;

  void handleSubmit() {
    setState(() {
      isSubmitted = true;
    });
    _showResultsDialog();
  }

  void _showResultsDialog() {
    int correctAnswers = 0;

    for (int i = 0; i < widget.questions.length; i++) {
      if (userAnswers[i] == widget.questions[i]["correctAnswer"]) {
        correctAnswers++;
      }
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Results"),
          content: Text(
              "You got $correctAnswers out of ${widget.questions.length} correct!"),
          actions: [
            TextButton(
              onPressed: () => {
                Navigator.pop(context),
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Hard()))
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(41, 36, 59, 1),
      appBar: AppBar(
        title:
            Text(widget.pageTitle, style: const TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromRGBO(41, 36, 59, 1),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.textTitle,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                widget.longText,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(height: 16),
              const Text(
                "Questions",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),

              // Display questions
              ...widget.questions.asMap().entries.map((entry) {
                int index = entry.key;
                Map<String, dynamic> question = entry.value;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question['question'],
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(height: 8),
                    Column(
                      children: question['options'].map<Widget>((option) {
                        Color buttonColor = Colors.blue;

                        if (userAnswers[index] != null) {
                          if (userAnswers[index] == option) {
                            buttonColor =
                                userAnswers[index] == question['correctAnswer']
                                    ? Colors.green
                                    : Colors.red;
                          } else if (option == question['correctAnswer']) {
                            buttonColor = Colors.green;
                          }
                        }

                        return GestureDetector(
                          onTap: () {
                            if (userAnswers[index] == null) {
                              setState(() {
                                userAnswers[index] = option;
                              });
                            }
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                              color: buttonColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            margin: const EdgeInsets.symmetric(vertical: 4),
                            child: Center(
                              child: Text(
                                option,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 24),
                  ],
                );
              }),
              Center(
                child: ElevatedButton(
                  onPressed: isSubmitted ? null : handleSubmit,
                  child: const Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
