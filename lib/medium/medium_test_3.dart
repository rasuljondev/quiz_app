import 'package:chemistry_through_english/medium/medium.dart';
import 'package:flutter/material.dart';

class MediumTest3 extends StatefulWidget {
  const MediumTest3({super.key});

  @override
  _MediumTest3State createState() => _MediumTest3State();
}

class _MediumTest3State extends State<MediumTest3> {
  final List<Map<String, dynamic>> questions = [
    {
      'question': '1. What is the main purpose of the periodic table?',
      'options': [
        'A) To arrange elements by increasing atomic mass.',
        'B) To systematically organize elements based on their properties.',
        'C) To classify elements as metals or nonmetals.',
        'D) To display chemical reactions between elements.'
      ],
      'correctAnswer':
          'B) To systematically organize elements based on their properties.',
    },
    {
      'question':
          '2. Who is credited with developing the first periodic table?',
      'options': [
        'A) Marie Curie',
        'B) Dmitri Mendeleev',
        'C) John Dalton',
        'D) Ernest Rutherford'
      ],
      'correctAnswer': 'B) Dmitri Mendeleev',
    },
    {
      'question': '3. How are elements organized in the modern periodic table?',
      'options': [
        'A) By atomic mass',
        'B) By electron configurations',
        'C) By atomic number',
        'D) By chemical symbols'
      ],
      'correctAnswer': 'C) By atomic number',
    },
    {
      'question':
          '4. What is the significance of groups in the periodic table?',
      'options': [
        'A) They contain elements with the same atomic number.',
        'B) They classify elements based on their atomic mass.',
        'C) They contain elements with similar chemical properties.',
        'D) They are rows that arrange elements by their properties.'
      ],
      'correctAnswer':
          'C) They contain elements with similar chemical properties.',
    },
    {
      'question':
          '5. Which of the following is NOT a classification of elements on the periodic table?',
      'options': ['A) Metals', 'B) Metalloids', 'C) Liquids', 'D) Nonmetals'],
      'correctAnswer': 'C) Liquids',
    },
    {
      'question': '6. What property of metals is mentioned in the passage?',
      'options': [
        'A) Poor conductivity',
        'B) Intermediate chemical properties',
        'C) Good conductivity of heat and electricity',
        'D) Low atomic number'
      ],
      'correctAnswer': 'C) Good conductivity of heat and electricity',
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
        title: const Text("Test 3", style: TextStyle(color: Colors.white)),
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
                "The Periodic Table of Elements",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              const Text(
                """   The periodic table is a systematic arrangement of chemical elements based on their atomic number, electron configurations, and recurring chemical properties. It was first developed by Dmitri Mendeleev in 1869. Mendeleev's table arranged elements in order of increasing atomic mass. Modern periodic tables, however, organize elements by increasing atomic number, which is the number of protons in the nucleus of an atom.
    Each element in the periodic table is represented by its chemical symbol (e.g., H for hydrogen, O for oxygen) and includes information about its atomic number and atomic mass. Elements are grouped into columns called groups or families, and rows known as periods. Elements within the same group share similar chemical properties because they have the same number of valence electrons.
    The periodic table also classifies elements into metals, nonmetals, and metalloids. Metals are good conductors of heat and electricity, while nonmetals are generally poor conductors. Metalloids have properties that are intermediate between metals and nonmetals. The periodic table is an essential tool for chemists and scientists, helping them predict chemical behaviors and reactions.
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
