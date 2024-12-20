import 'package:chemistry_through_english/hard/hard.dart';
import 'package:flutter/material.dart';

class HardTests8 extends StatefulWidget {
  const HardTests8({super.key});

  @override
  _HardTests8State createState() => _HardTests8State();
}

class _HardTests8State extends State<HardTests8> {
  final Map<int, String?> userAnswers = {}; // To store user-selected answers
  final Map<int, bool?> questionResults =
      {}; // To store correct/incorrect results
  final List<Map<String, dynamic>> textFieldQuestions = [
    {
      "question": "1. Alkanes have only ____ bonds between carbon atoms.",
      "answer": "single"
    },
    {
      "question": "2. The functional group -OH is characteristic of ____.",
      "answer": "alcohols"
    },
    {
      "question": "3. Ethene (C₂H₄) is an example of an ____.",
      "answer": "alkene"
    },
    {
      "question": "4. A triple bond is found in ____ hydrocarbons.",
      "answer": "alkyne"
    },
    {
      "question": "5. The functional group -COOH is known as ____.",
      "answer": "carboxyl"
    },
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
                "Organic Chemistry",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              const Text(
                """Organic chemistry focuses on compounds containing carbon. Hydrocarbons are the simplest organic compounds, made up of only carbon and hydrogen. They can be classified as:
1. Alkanes: Single bonds only (e.g., methane, CH₄).
2. Alkenes: Contain at least one double bond (e.g., ethene, C₂H₄).
3. Alkynes: Contain at least one triple bond (e.g., ethyne, C₂H₂).
Functional groups are specific groups of atoms within molecules that determine their chemical reactivity. For instance:
Hydroxyl (-OH): Found in alcohols
Carboxyl (-COOH): Found in acids like acetic acid
""",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Text(
                """Fill-in-the-Blank Questions
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
