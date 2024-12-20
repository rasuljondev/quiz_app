import 'package:chemistry_through_english/medium/medium.dart';
import 'package:flutter/material.dart';

class MediumTest5 extends StatefulWidget {
  const MediumTest5({super.key});

  @override
  _MediumTest5State createState() => _MediumTest5State();
}

class _MediumTest5State extends State<MediumTest5> {
  final List<Map<String, dynamic>> questions = [
    {
      'question': '1. What happens in a synthesis reaction?',
      'options': [
        'A) A single compound breaks down into smaller parts.',
        'B) Two or more substances combine to form one product.',
        'C) Elements exchange between compounds.',
        'D) A compound reacts with oxygen to produce energy.'
      ],
      'correctAnswer': 'B) Two or more substances combine to form one product.',
    },
    {
      'question':
          '2. What type of reaction involves one element replacing another in a compound?',
      'options': [
        'A) Synthesis reaction',
        'B) Decomposition reaction',
        'C) Single replacement reaction',
        'D) Double replacement reaction'
      ],
      'correctAnswer': 'C) Single replacement reaction',
    },
    {
      'question': '3. What do combustion reactions typically produce?',
      'options': [
        'A) Heat and light',
        'B) Hydrogen gas',
        'C) Water and salt',
        'D) Acid and base'
      ],
      'correctAnswer': 'A) Heat and light',
    },
    {
      'question':
          '4. Which reaction type is demonstrated by the decomposition of water?',
      'options': [
        'A) Synthesis reaction',
        'B) Decomposition reaction',
        'C) Single replacement reaction',
        'D) Double replacement reaction'
      ],
      'correctAnswer': 'B) Decomposition reaction',
    },
    {
      'question': '5. Why is understanding reaction types important?',
      'options': [
        'A) It helps improve laboratory equipment.',
        'B) It allows prediction of chemical process outcomes.',
        'C) It classifies all substances as acids or bases.',
        'D) It eliminates the need for chemical formulas.'
      ],
      'correctAnswer': 'B) It allows prediction of chemical process outcomes.',
    },
  ];

  final Map<int, String?> userAnswers = {}; // To store user-selected answers

  bool isSubmitted = false;
  bool showFeedback = false;

  void handleSubmit() {
    setState(() {
      isSubmitted = true;
    });
    _showResultsDialog();
  }

  void _showResultsDialog() {
    int correctAnswers = 0;

    // Count correct answers for multiple-choice questions
    for (int i = 0; i < questions.length; i++) {
      if (userAnswers[i] == questions[i]["correctAnswer"]) {
        correctAnswers++;
      }
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Results"),
          content: Text(
              "You got $correctAnswers out of ${questions.length} correct!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Medium()));
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
        title: const Text("Test 5", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromRGBO(41, 36, 59, 1),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Types of Chemical Reactions",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              const Text(
                """Chemical reactions involve the transformation of substances into different substances. There are several types of reactions, including synthesis, decomposition, single replacement, and double replacement.
In a synthesis reaction, two or more substances combine to form a single product. For example, hydrogen and oxygen gases react to form water. In decomposition reactions, a single compound breaks down into two or more products, such as the decomposition of water into hydrogen and oxygen gases.
Single replacement reactions occur when one element replaces another in a compound, while double replacement reactions involve the exchange of elements between two compounds. Combustion reactions, which produce heat and light, often involve the burning of a fuel in the presence of oxygen.
Understanding these reaction types is essential for predicting the outcomes of chemical processes in both laboratory and industrial settings.
""",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Text(
                """Questions""",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),

              // Display multiple choice questions
              ...questions.asMap().entries.map((entry) {
                int index = entry.key;
                Map<String, dynamic> question = entry.value;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${question['question']}",
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(height: 8),
                    // Map through dynamic options
                    Column(
                      children: question['options'].map<Widget>((option) {
                        Color buttonColor = Colors.blue; // Default button color

                        if (userAnswers[index] != null) {
                          // Show correct/incorrect feedback based on answer
                          if (userAnswers[index] == option) {
                            if (userAnswers[index] ==
                                question['correctAnswer']) {
                              buttonColor = Colors.green; // Correct answer
                            } else {
                              buttonColor =
                                  Colors.red; // Incorrect selected answer
                            }
                          } else if (option == question['correctAnswer']) {
                            buttonColor =
                                Colors.green; // Correct answer (other button)
                          }
                        } else if (userAnswers[index] == option) {
                          buttonColor =
                              Colors.grey; // Selected but not submitted yet
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
              // Submit Button
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
