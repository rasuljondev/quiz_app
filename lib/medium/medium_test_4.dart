import 'package:chemistry_through_english/medium/medium.dart';
import 'package:flutter/material.dart';

class MediumTest4 extends StatefulWidget {
  const MediumTest4({super.key});

  @override
  _MediumTest3State createState() => _MediumTest3State();
}

class _MediumTest3State extends State<MediumTest4> {
  final List<Map<String, dynamic>> questions = [
    {
      'question': '1. What do acids produce when dissolved in water?',
      'options': [
        'A) Hydroxide ions (OH⁻)',
        'B) Hydrogen ions (H⁺)',
        'C) Neutral molecules',
        'D) Salt molecules'
      ],
      'correctAnswer': 'B) Hydrogen ions (H⁺)',
    },
    {
      'question': '2. What does a pH of 7 indicate?',
      'options': [
        'A) An acidic solution',
        'B) A neutral solution',
        'C) A basic solution',
        'D) A reactive solution'
      ],
      'correctAnswer': 'B) A neutral solution',
    },
    {
      'question': '3. Which of the following is an example of a base?',
      'options': [
        'A) Vinegar',
        'B) Lemon juice',
        'C) Baking soda',
        'D) Orange juice'
      ],
      'correctAnswer': 'C) Baking soda',
    },
    {
      'question': '4. What is the process of neutralization?',
      'options': [
        'A) Mixing acids with bases to form water and salt',
        'B) Producing hydrogen ions in a solution',
        'C) Dissolving substances in water',
        'D) Increasing the acidity of a solution'
      ],
      'correctAnswer': 'A) Mixing acids with bases to form water and salt',
    },
    {
      'question': '5. Which taste is associated with acids?',
      'options': ['A) Bitter', 'B) Sweet', 'C) Sour', 'D) Salty'],
      'correctAnswer': 'C) Sour',
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
        title: const Text("Test 4", style: TextStyle(color: Colors.white)),
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
                "Acids and Bases in Chemistry",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              const Text(
                """Acids and bases are two important categories of chemical compounds. Acids are substances that produce hydrogen ions (H⁺) when dissolved in water, while bases produce hydroxide ions (OH⁻). The pH scale, which ranges from 0 to 14, measures the acidity or alkalinity of a solution. A pH below 7 indicates an acidic solution, a pH of 7 is neutral, and a pH above 7 indicates a basic solution.
Common examples of acids include vinegar (acetic acid) and citrus fruits (citric acid), while common bases include baking soda (sodium bicarbonate) and soap. Acids are often sour in taste and can react with metals to produce hydrogen gas, whereas bases are bitter and feel slippery to the touch.
Acid-base reactions often result in the formation of water and a salt, a process known as neutralization. This principle is widely applied in industries, such as medicine, agriculture, and cleaning products.
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
