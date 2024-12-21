import 'package:chemistry_through_english/hard/hard.dart';
import 'package:flutter/material.dart';

class HardTests6 extends StatefulWidget {
  const HardTests6({super.key});

  @override
  _HardTests6State createState() => _HardTests6State();
}

class _HardTests6State extends State<HardTests6> {
  final Map<int, String?> userAnswers = {}; // To store user-selected answers
  final Map<int, bool?> questionResults =
      {}; // To store correct/incorrect results
  final List<Map<String, dynamic>> textFieldQuestions = [
    {"question": "1", "answer": "E"},
    {"question": "2", "answer": "B"},
    {"question": "3", "answer": "C"},
    {"question": "4", "answer": "D"},
    {"question": "5", "answer": "A"},
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
                "Bonding and Molecular Geometry",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              const Text(
                """   Atoms form chemical bonds to achieve stable electron configurations. There are three primary types of bonds:
    1. Ionic Bonds: Formed between metals and nonmetals through the transfer of electrons. For example, sodium chloride (NaCl).
    2. Covalent Bonds: Formed when two nonmetals share electrons, such as in a water molecule (H₂O).
    3. Metallic Bonds: Found in metals where electrons form a "sea" that flows around positively charged ions, as seen in aluminum or copper.
    Molecular geometry describes the shape of molecules. It is determined by the arrangement of electron pairs around the central atom, often predicted using the VSEPR theory. For example:
    Linear: Two electron pairs arranged 180° apart (e.g., CO₂).
    Tetrahedral: Four pairs spaced 109.5° apart (e.g., CH₄).
""",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Text(
                """Matching Questions
Match the terms (Column A) with their definitions/examples (Column B):
""",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),
              Image.asset("assets/column.png"),

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
