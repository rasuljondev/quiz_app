import 'package:chemistry_through_english/medium/medium.dart';
import 'package:flutter/material.dart';

class MediumTest7 extends StatefulWidget {
  const MediumTest7({super.key});

  @override
  _MediumTest7State createState() => _MediumTest7State();
}

class _MediumTest7State extends State<MediumTest7> {
  final List<Map<String, dynamic>> questions = [
    {
      'question': '1. What type of bond involves the transfer of electrons?',
      'options': [
        'A) Covalent bond',
        'B) Ionic bond',
        'C) Metallic bond',
        'D) Hydrogen bond'
      ],
      'correctAnswer': 'B) Ionic bond',
    },
    {
      'question':
          '2. Which type of bond is responsible for the properties of metals?',
      'options': [
        'A) Ionic bond',
        'B) Covalent bond',
        'C) Metallic bond',
        'D) Polar bond'
      ],
      'correctAnswer': 'C) Metallic bond',
    },
    {
      'question': '3. What do covalent bonds involve?',
      'options': [
        'A) The transfer of electrons between atoms',
        'B) Sharing of electrons between atoms',
        'C) Attraction between charged ions',
        'D) Movement of protons'
      ],
      'correctAnswer': 'B) Sharing of electrons between atoms',
    },
    {
      'question':
          '4. Which of the following is an example of a compound with ionic bonds?',
      'options': [
        'A) Water (H₂O)',
        'B) Sodium chloride (NaCl)',
        'C) Carbon dioxide (CO₂)',
        'D) Methane (CH₄)'
      ],
      'correctAnswer': 'B) Sodium chloride (NaCl)',
    },
    {
      'question': '5. Why do atoms form chemical bonds?',
      'options': [
        'A) To increase their mass',
        'B) To achieve a stable electronic arrangement',
        'C) To change their atomic number',
        'D) To create new elements'
      ],
      'correctAnswer': 'B) To achieve a stable electronic arrangement',
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
        title: const Text("Test 7", style: TextStyle(color: Colors.white)),
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
                "Chemical Bonds",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              const Text(
                """Atoms form chemical bonds to achieve a more stable electronic arrangement. There are three main types of bonds: ionic, covalent, and metallic.
Ionic bonds occur when one atom transfers electrons to another, creating positively and negatively charged ions that attract each other. This type of bond is commonly found in salts, such as sodium chloride. Covalent bonds form when two atoms share electrons, resulting in a strong bond. Water (H₂O) and carbon dioxide (CO₂) are examples of molecules with covalent bonds. Metallic bonds, on the other hand, occur between metal atoms and involve a "sea" of shared electrons, giving metals their characteristic properties such as conductivity and malleability.
Chemical bonding is fundamental to understanding the structure and properties of substances, as it explains how atoms combine and interact.
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
