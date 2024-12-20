import 'package:chemistry_through_english/screens/level_screen.dart';
import 'package:flutter/material.dart';

class EasyMatching extends StatefulWidget {
  final int natija;
  const EasyMatching({super.key, required this.natija});

  @override
  _EasyMatchingState createState() => _EasyMatchingState();
}

class _EasyMatchingState extends State<EasyMatching> {
  final List<String> correctAnswers = ["C", "A", "B"];
  final List<TextEditingController> controllers = List.generate(
      5, (index) => TextEditingController()); // Controllers for text fields
  final List<String> feedback =
      List.generate(5, (index) => ''); // Feedback for incorrect answers
  int correctCount = 0; // To track the number of correct answers

  void checkAnswers() {
    setState(() {
      correctCount = 0;
      for (int i = 0; i < correctAnswers.length; i++) {
        if (controllers[i].text.trim() == correctAnswers[i]) {
          correctCount++;
          feedback[i] = ''; // Clear feedback for correct answers
        } else {
          feedback[i] =
              'Incorrect. Correct answer: ${correctAnswers[i]}'; // Show the correct answer with "Incorrect"
        }
      }
    });

    // Wait for 3 seconds before showing the results
    Future.delayed(const Duration(seconds: 3), () {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Results'),
            content: Text(
                'You got ${correctCount + widget.natija} out of 50 correct!'),
            actions: [
              TextButton(
                onPressed: () => {
                  Navigator.of(context).pop(),
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LevelScreen()))
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    });
  }

  @override
  void dispose() {
    // Dispose controllers to free up memory
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(41, 36, 59, 1),
      appBar: AppBar(
        title: const Text('Matching'),
        backgroundColor: const Color.fromRGBO(58, 255, 210, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display the passage
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: const Column(
                  children: [
                    Text(
                      "Types of Chemical Bond",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Text(
                      """Chemical bonds are the forces that hold atoms together in molecules. There are three main types of chemical bonds: ionic, covalent, and metallic. Ionic bonds occur when electrons are transferred between atoms, resulting in oppositely charged ions that attract each other. Covalent bonds involve the sharing of electron pairs between atoms. Metallic bonds, found in metals, consist of a "sea of electrons" that move freely around positively charged metal ions, giving metals their characteristic properties like conductivity and malleability.
""",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Display the question
              const Text(
                """Match the type of bond with its description:
1. Ionic bond
2. Covalent bond
3. Metallic bond

A) Involves the sharing of electron pairs.
B) Electrons move freely around positively charged ions.
C) Results from the transfer of electrons between atoms.
""",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(58, 255, 210, 1),
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 20),

              // Display text fields for answers
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: correctAnswers.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextField(
                          style: const TextStyle(color: Colors.white),
                          controller: controllers[index],
                          decoration: InputDecoration(
                            labelStyle: const TextStyle(color: Colors.white),
                            fillColor: Colors.white,
                            labelText: 'Answer ${index + 1}',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      if (feedback[index].isNotEmpty)
                        Text(
                          feedback[index],
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                          ),
                        ),
                    ],
                  );
                },
              ),

              const SizedBox(height: 20),

              // Submit button
              Center(
                child: ElevatedButton(
                  onPressed: checkAnswers,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, // Button color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('Submit Answers'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
