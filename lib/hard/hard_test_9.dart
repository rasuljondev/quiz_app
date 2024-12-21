import 'package:chemistry_through_english/hard/hard.dart';

import 'package:flutter/material.dart';

class HardTests9 extends StatefulWidget {
  const HardTests9({super.key});

  @override
  _HardTests9State createState() => _HardTests9State();
}

class _HardTests9State extends State<HardTests9> {
  final Map<int, String?> userAnswers = {}; // To store user-selected answers
  final Map<int, bool?> questionResults =
      {}; // To store correct/incorrect results
  final List<Map<String, dynamic>> textFieldQuestions = [
    {
      "question": "A. Entropy approaches zero at absolute zero temperature.",
      "answer": "3"
    },
    {
      "question":
          "B. Energy transfers in chemical reactions follow the law of conservation.",
      "answer": "1"
    },
    {"question": "C. Entropy of a system increases over time.", "answer": "2"},
  ];

  final List<TextEditingController> textFieldControllers = [];
  bool isSubmitted = false;
  bool showFeedback = false;

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < textFieldQuestions.length; i++) {
      textFieldControllers.add(TextEditingController());
    }
  }

  void handleSubmit() {
    setState(() {
      isSubmitted = true;
    });
    _showResultsDialog();
  }

  void _showResultsDialog() {
    int correctAnswers = 0;

    // Count correct answers for TextField questions
    for (int i = 0; i < textFieldQuestions.length; i++) {
      if (textFieldControllers[i].text.trim().toLowerCase() ==
          textFieldQuestions[i]["answer"]!.toLowerCase()) {
        correctAnswers++;
      }
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Results"),
          content: Text(
              "You got $correctAnswers out of ${textFieldQuestions.length} correct!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Hard()));
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
        title: const Text("Test 9", style: TextStyle(color: Colors.white)),
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
                "Thermodynamics ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              const Text(
                """   The laws of thermodynamics govern energy transfer:
    1. First Law: Energy cannot be created or destroyed, only transferred or transformed (law of conservation).
    2. Second Law: Entropy of an isolated system always increases over time.
    3. Third Law: As temperature approaches absolute zero, the entropy of a system approaches a constant minimum.


    Key terms:
    Enthalpy (H): Total heat content of a system.
    Entropy (S): Measure of disorder in a system.
    Gibbs Free Energy (G): Determines spontaneity of a process:
    Delta G = Delta H - T Delta S
""",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Text(
                """Sequencing Questions
Put the following events in order based on the passage:
1 2 3
""",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              // Text Field Questions
              const SizedBox(height: 24),
              ...[
                for (int i = 0; i < textFieldQuestions.length; i++) ...[
                  Text(
                    textFieldQuestions[i]["question"]!,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: textFieldControllers[i],
                    enabled: !isSubmitted,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: isSubmitted
                          ? textFieldControllers[i].text.trim().toLowerCase() ==
                                  textFieldQuestions[i]["answer"]!.toLowerCase()
                              ? Colors.green
                              : Colors.red
                          : Colors.white10,
                      border: const OutlineInputBorder(),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  if (isSubmitted &&
                      textFieldControllers[i].text.trim().toLowerCase() !=
                          textFieldQuestions[i]["answer"]!.toLowerCase())
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        "Correct answer: ${textFieldQuestions[i]["answer"]}",
                        style: const TextStyle(color: Colors.green),
                      ),
                    ),
                  const SizedBox(height: 16),
                ],
              ],

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
