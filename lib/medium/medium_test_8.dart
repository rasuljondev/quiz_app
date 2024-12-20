import 'package:chemistry_through_english/medium/medium.dart';
import 'package:flutter/material.dart';

class MediumTest8 extends StatefulWidget {
  const MediumTest8({super.key});

  @override
  _MediumTest8State createState() => _MediumTest8State();
}

class _MediumTest8State extends State<MediumTest8> {
  final List<Map<String, dynamic>> questions = [
    {
      'question': '1. What role does water often play in chemistry?',
      'options': [
        'A) A solid reactant',
        'B) A solvent and medium for reactions',
        'C) A neutral byproduct',
        'D) A source of metals'
      ],
      'correctAnswer': 'B) A solvent and medium for reactions',
    },
    {
      'question': '2. What is evaporation?',
      'options': [
        'A) The cooling of water into a solid',
        'B) The absorption of energy by water molecules to become gas',
        'C) The transformation of gas into liquid',
        'D) The freezing of water into ice'
      ],
      'correctAnswer':
          'B) The absorption of energy by water molecules to become gas',
    },
    {
      'question': '3. What happens during condensation?',
      'options': [
        'A) Water vapor turns into liquid droplets.',
        'B) Water molecules freeze into ice crystals.',
        'C) Water molecules absorb energy and rise.',
        'D) Water flows back into rivers and lakes.'
      ],
      'correctAnswer': 'A) Water vapor turns into liquid droplets.',
    },
    {
      'question': '4. Which of the following is a step in the water cycle?',
      'options': [
        'A) Neutralization',
        'B) Precipitation',
        'C) Oxidation',
        'D) Sublimation'
      ],
      'correctAnswer': 'B) Precipitation',
    },
    {
      'question': '5. What completes the water cycle?',
      'options': [
        'A) Evaporation',
        'B) Condensation',
        'C) Runoff',
        'D) Precipitation'
      ],
      'correctAnswer': 'C) Runoff',
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
        title: const Text("Test 8", style: TextStyle(color: Colors.white)),
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
                "The Role of Water in Chemistry",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              const Text(
                """Water is essential in chemistry as a solvent, reactant, and medium for many processes. Its unique properties, such as its high heat capacity and ability to dissolve many substances, make it vital for life and industry. The water cycle describes the continuous movement of water on Earth, including evaporation, condensation, precipitation, and runoff.
Evaporation occurs when water molecules absorb energy and transition into a gaseous state. This water vapor rises and cools, leading to condensation and the formation of clouds. When droplets in the clouds grow large enough, they fall as precipitation (rain, snow, etc.). Runoff then returns water to rivers, lakes, and oceans, completing the cycle.
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
