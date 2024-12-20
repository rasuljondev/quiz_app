import 'package:chemistry_through_english/medium/medium.dart';
import 'package:flutter/material.dart';

class MediumTest6 extends StatefulWidget {
  const MediumTest6({super.key});

  @override
  _MediumTest6State createState() => _MediumTest6State();
}

class _MediumTest6State extends State<MediumTest6> {
  final List<Map<String, dynamic>> questions = [
    {
      'question': '1. What is a characteristic of a solid?',
      'options': [
        'A) Definite volume but no fixed shape',
        'B) Fixed shape and volume',
        'C) No fixed shape or volume',
        'D) Particles that move freely'
      ],
      'correctAnswer': 'B) Fixed shape and volume',
    },
    {
      'question': '2. How do the particles in a liquid behave?',
      'options': [
        'A) They are tightly packed and fixed in place.',
        'B) They move freely and are far apart.',
        'C) They slide past each other and take the shape of their container.',
        'D) They are arranged in a rigid structure.'
      ],
      'correctAnswer':
          'C) They slide past each other and take the shape of their container.',
    },
    {
      'question': '3. What happens to a solid when it is heated?',
      'options': [
        'A) It condenses into a liquid.',
        'B) It freezes into a gas.',
        'C) It melts into a liquid.',
        'D) It evaporates into a gas.'
      ],
      'correctAnswer': 'C) It melts into a liquid.',
    },
    {
      'question':
          '4. What is the process called when a gas changes into a liquid?',
      'options': [
        'A) Freezing',
        'B) Melting',
        'C) Evaporation',
        'D) Condensation'
      ],
      'correctAnswer': 'D) Condensation',
    },
    {
      'question':
          '5. What role do temperature and pressure play in the states of matter?',
      'options': [
        'A) They determine whether a substance is an acid or a base.',
        'B) They affect the movement of particles and cause state changes.',
        'C) They help maintain the volume of solids and liquids.',
        'D) They have no effect on the physical state of matter.'
      ],
      'correctAnswer':
          'B) They affect the movement of particles and cause state changes.',
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
        title: const Text("Test 6", style: TextStyle(color: Colors.white)),
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
                "The States of Matter",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              const Text(
                """Matter exists in three primary states: solid, liquid, and gas. Each state has unique characteristics based on the arrangement and movement of its particles.
In a solid, particles are tightly packed together in a fixed structure, giving solids a definite shape and volume. In a liquid, particles are less tightly packed and can move past each other, allowing liquids to take the shape of their container while maintaining a fixed volume. Gases, on the other hand, have particles that are far apart and move freely. As a result, gases have neither a definite shape nor a fixed volume.
Temperature and pressure play a significant role in changing the state of matter. For instance, heating a solid can cause it to melt into a liquid, and further heating turns the liquid into a gas through evaporation. Similarly, cooling a gas can condense it into a liquid, and freezing a liquid results in a solid. These processes are examples of physical changes.
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
