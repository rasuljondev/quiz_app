import 'package:chemistry_through_english/easy/easy_fill_the_gap.dart';
import 'package:flutter/material.dart';
import 'package:chemistry_through_english/easy/easy_questions.dart';

class EasyQuizPage extends StatefulWidget {
  const EasyQuizPage({super.key});

  @override
  _EasyQuizPageState createState() => _EasyQuizPageState();
}

class _EasyQuizPageState extends State<EasyQuizPage> {
  List<EasyQuestion1> questionList = easyQuestions;
  int currentQuestionIndex = 0;
  int correctAnswers = 0;
  String selectedAnswer = ''; // Track the selected answer
  bool showFeedback = false; // Whether to show feedback

  // Move to the next question
  void nextQuestion() {
    if (currentQuestionIndex < questionList.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedAnswer = '';
        showFeedback = false;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EasyFillTheGap(natija: correctAnswers),
        ),
      );
    }
  }

  // Show the score at the end of the quiz
  void showScore() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Quiz Finished!'),
          content: Text('You got $correctAnswers out of ${50} correct!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop(); // Go back to the previous screen
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // Check the answer and show correct/incorrect feedback
  void checkAnswer(String answer) {
    setState(() {
      selectedAnswer = answer;
      showFeedback = true;

      // Check if selected answer is correct and update score
      if (answer == questionList[currentQuestionIndex].correctAnswer) {
        correctAnswers++;
      }
    });

    // Move to the next question after 2 seconds
    Future.delayed(const Duration(seconds: 2), nextQuestion);
  }

  // Function to finish quiz early
  void finishQuiz() {
    showScore(); // Directly show the score dialog
  }

  @override
  Widget build(BuildContext context) {
    final question = questionList[currentQuestionIndex];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(41, 36, 59, 1),
      appBar: AppBar(
        title: const Text('Chemistry Quiz'),
        backgroundColor: const Color.fromRGBO(58, 255, 210, 1),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Display Reading Passage if the question type is 'reading'
                if (question.type == "reading")
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Show Title if it exists
                      if (question.title != null && question.title!.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            question.title!,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        )
                      else
                        const SizedBox.shrink(), // Empty space if no title

                      // Reading Passage
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        margin: const EdgeInsets.only(bottom: 20),
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
                        child: SingleChildScrollView(
                          child: Text(
                            question.passageText,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ],
                  ),

// Display Question Text
                Text(
                  question.questionText,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(58, 255, 210, 1),
                  ),
                ),
                const SizedBox(height: 20),

// Show answer buttons
                ...question.options!.map(
                  (option) {
                    // Set button color based on selected answer
                    Color buttonColor = Colors.blue; // Default color

                    if (showFeedback) {
                      if (option == question.correctAnswer) {
                        buttonColor = Colors.green; // Correct answer
                      } else if (option == selectedAnswer) {
                        buttonColor = Colors.red; // Incorrect selected answer
                      }
                    }

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: GestureDetector(
                        onTap: showFeedback
                            ? null
                            : () {
                                checkAnswer(option);
                              },
                        child: AnimatedContainer(
                          duration: const Duration(
                              milliseconds: 0), // Remove fade effect
                          decoration: BoxDecoration(
                            color:
                                buttonColor, // Dynamically update button color
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          child: Center(
                            child: Text(
                              option,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),

                const SizedBox(height: 20),

                // Finish Button
                Center(
                  child: ElevatedButton(
                    onPressed: finishQuiz,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange, // Button color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text('Finish Quiz'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
