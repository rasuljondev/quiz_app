import 'package:chemistry_through_english/easy/easy_matching.dart';
import 'package:flutter/material.dart';

class EasyFillTheGap extends StatefulWidget {
  final int natija;
  const EasyFillTheGap({super.key, required this.natija});

  @override
  _EasyFillTheGapState createState() => _EasyFillTheGapState();
}

class _EasyFillTheGapState extends State<EasyFillTheGap> {
  final List<String> correctAnswers = ["0", "7", "pH", "soil"];
  final List<TextEditingController> controllers = List.generate(
      4, (index) => TextEditingController()); // Controllers for text fields
  final List<bool> isCorrect = [
    false,
    false,
    false,
    false
  ]; // Track correctness of each answer
  bool isSubmitted = false; // Flag to track if the submit button was pressed

  void checkAnswers() {
    int userCorrectAnswers = 0;

    // Check each answer and update the correctness
    for (int i = 0; i < controllers.length; i++) {
      if (controllers[i].text.trim() == correctAnswers[i]) {
        isCorrect[i] = true;
        userCorrectAnswers++;
      } else {
        isCorrect[i] = false;
      }
    }

    setState(() {
      isSubmitted = true; // Mark the form as submitted
    });

    // Calculate the result and pass it to EasyMatching screen
    int totalCorrectAnswers = userCorrectAnswers + widget.natija;

    // Wait for 2 seconds before navigating
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EasyMatching(natija: totalCorrectAnswers),
        ),
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
        title: const Text('Fill The Gap'),
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
                      "The Role of pH in Chemical Reactions",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      """The pH scale is used to measure the acidity or basicity of a solution, ranging from 0 to 14. A pH of 7 is considered neutral, while values below 7 indicate acidity, and values above 7 indicate basicity. pH plays a crucial role in many chemical reactions, particularly in biological systems and industrial processes. For example, enzymes in the human body work best at specific pH levels, and slight changes can significantly impact their efficiency. Similarly, in agriculture, the pH of soil affects the availability of nutrients to plants. Maintaining the correct pH levels is essential for optimizing chemical processes and ensuring desired outcomes.""",
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
                """Find the numbers:
The pH scale ranges from 1_______ to 14.
A pH value below 2________ indicates acidity.
Enzymes in the human body work best at specific 3________ levels.
The pH of 4__________ influences nutrient availability for plants.""",
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
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          style: const TextStyle(color: Colors.white),
                          controller: controllers[index],
                          decoration: InputDecoration(
                            labelStyle: const TextStyle(color: Colors.white),
                            fillColor: Colors.white,
                            labelText: 'Answer ${index + 1}',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: isSubmitted
                                    ? (isCorrect[index]
                                        ? Colors.green
                                        : Colors.red)
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        if (isSubmitted && !isCorrect[index])
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              'Correct answer: ${correctAnswers[index]}',
                              style: const TextStyle(
                                color: Colors.red,
                                fontSize: 14,
                              ),
                            ),
                          ),
                      ],
                    ),
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
