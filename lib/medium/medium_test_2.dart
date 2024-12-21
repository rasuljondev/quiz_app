import 'package:chemistry_through_english/medium/medium.dart';
import 'package:flutter/material.dart';

class MediumTest2 extends StatefulWidget {
  const MediumTest2({super.key});

  @override
  _MediumTest2State createState() => _MediumTest2State();
}

class _MediumTest2State extends State<MediumTest2> {
  final List<Map<String, dynamic>> questions = [
    {
      'question':
          '7. Which property of water helps regulate environmental temperatures?',
      'options': [
        'A) we discover a new smell.',
        'B) we experience a powerful smell.',
        'C) our ability to smell is damaged.',
        'D) we are surrounded by odours.'
      ],
      'correctAnswer': 'C) our ability to smell is damaged.',
    },
    {
      'question': '8. The experiment described in paragraph B',
      'options': [
        'A) shows how we make use of smell without realising it.',
        'B) demonstrates that family members have a similar smell.',
        'C) proves that a sense of smell is learnt.',
        'D) compares the sense of smell in males and females.'
      ],
      'correctAnswer':
          'A) shows how we make use of smell without realising it.',
    },
    {
      'question': '9. What is the writer doing in paragraph C?',
      'options': [
        'A) supporting other research',
        'B) making a proposal',
        'C) rejecting a common belief',
        'D) describing limitations'
      ],
      'correctAnswer': 'C) rejecting a common belief',
    },
    {
      'question':
          '10. What does the writer suggest about the study of smell in the atmosphere in paragraph E?',
      'options': [
        'A) The measurement of smell is becoming more accurate.',
        'B) Researchers believe smell is a purely physical reaction.',
        'C) Most smells are inoffensive.',
        'D) Smell is yet to be defined.'
      ],
      'correctAnswer': 'D) Smell is yet to be defined.',
    }
  ];

  final Map<int, String?> userAnswers = {}; // To store user-selected answers
  final Map<int, bool?> questionResults =
      {}; // To store correct/incorrect results
  final List<Map<String, dynamic>> textFieldQuestions = [
    {"question": "1. Paragraph A", "answer": "viii"},
    {"question": "2. Paragraph B", "answer": "ii"},
    {"question": "3. Paragraph C", "answer": "vi"},
    {"question": "4. Paragraph D", "answer": "i"},
    {"question": "5. Paragraph E", "answer": "iii"},
    {"question": "6. Paragraph F", "answer": "v"},
    {"question": "11. Describe the key feature of smell?", "answer": "unique"},
    {
      "question": "12. Name one function of smell in bonding?",
      "answer": "recognition"
    },
    {
      "question": "13. What is the cultural aspect of smell?",
      "answer": "values"
    },
    {
      "question": "14. How is smell studied in psychology?",
      "answer": "research"
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

    // Count correct answers for multiple-choice questions
    for (int i = 0; i < questions.length; i++) {
      if (userAnswers[i] == questions[i]["correctAnswer"]) {
        correctAnswers++;
      }
    }

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
              "You got $correctAnswers out of ${questions.length + textFieldQuestions.length} correct!"),
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
        title: const Text("Test 2", style: TextStyle(color: Colors.white)),
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
                "The meaning and power of smell",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("assets/smell.png"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                """   The sense of smell, or olfaction, is powerful. Odours affect us on a physical, psychological and social level. For the most part, however, we breathe in the aromas which surround us without being consciously aware of their importance to us. It is only when the faculty of smell is impaired for some reason that we begin to realise the essential role the sense of smell plays in our sense of well-being
A
    A survey conducted by Anthony Synott at Montreal’s Concordia University asked participants to comment on how important smell was to them in their lives. It became apparent that smell can evoke strong emotional responses. A scent associated with a good experience can bring a rush of joy, while a foul odour or one associated with a bad memory may make us grimace with disgust. Respondents to the survey noted that many of their olfactory likes and dislikes were based on emotional associations. Such associations can be powerful enough so that odours that we would generally label unpleasant become agreeable, and those that we would generally consider fragrant become disagreeable for particular individuals. The perception of smell, therefore, consists not only of the sensation of the odours themselves, but of the experiences and emotions associated with them.
B
    Odours are also essential cues in social bonding. One respondent to the survey believed that there is no true emotional bonding without touching and smelling a loved one. In fact, infants recognise the odours of their mothers soon after birth and adults can often identify their children or spouses by scent. In one well-known test, women and men were able to distinguish by smell alone clothing worn by their marriage partners from similar clothing worn by other people. Most of the subjects would probably never have given much thought to odour as a cue for identifying family members before being involved in the test, but as the experiment revealed, even when not consciously considered, smells register.
C
    In spite of its importance to our emotional and sensory lives, smell is probably the most undervalued sense in many cultures. The reason often given for the low regard in which smell is held is that, in comparison with its importance among animals, the human sense of smell is feeble and undeveloped. While it is true that the olfactory powers of humans are nothing like as fine as those possessed by certain animals, they are still remarkably acute. Our noses are able to recognise thousands of smells, and to perceive odours which are present only in extremely small quantities.
D
    Smell, however, is a highly elusive phenomenon. Odours, unlike colours, for instance, cannot be named in many languages because the specific vocabulary simply doesn’t exist. ‘It smells like . . . ,’ we have to say when describing an odour, struggling to express our olfactory experience. Nor can odours be recorded: there is no effective way to either capture or store them over time. In the realm of olfaction, we must make do with descriptions and recollections. This has implications for olfactory research.
E
    Most of the research on smell undertaken to date has been of a physical scientific nature. Significant advances have been made in the understanding of the biological and chemical nature of olfaction, but many fundamental questions have yet to be answered. Researchers have still to decide whether smell is one sense or two - one responding to odours proper and the other registering odourless chemicals in the air. Other unanswered questions are whether the nose is the only part of the body affected by odours, and how smells can be measured objectively given the nonphysical components. Questions like these mean that interest in the psychology of smell is inevitably set to play an increasingly important role for researchers.
F
    However, smell is not simply a biological and psychological phenomenon. Smell is cultural, hence it is a social and historical phenomenon. Odours are invested with cultural values: smells that are considered to be offensive in some cultures may be perfectly acceptable in others. Therefore, our sense of smell is a means of, and model for, interacting with the world. Different smells can provide us with intimate and emotionally charged experiences and the value that we attach to these experiences is interiorised by the members of society in a deeply personal way. Importantly, our commonly held feelings about smells can help distinguish us from other cultures. The study of the cultural history of smell is, therefore, in a very real sense, an investigation into the essence of human culture.
""",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Text(
                """Questions 1-6\nReading Passage 3 has six paragraphs, A-F.\nChoose the correct heading for each paragraph from the list of headings below.\nWrite the correct number, i-viii, in boxes 1-6 on your answer sheet.\n""",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),

              // Text Field Questions
              const SizedBox(height: 24),
              ...[
                for (int i = 0; i < 6; i++) ...[
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

              const Text(
                """Questions 7-10\nChoose the correct letter, A, B, C or D.\nWrite the correct letter in boxes 7-10 on your answer sheet.\n""",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),

              // Display multiple choice questions
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
              const Text(
                """Questions 11-14\nComplete the sentences below.\nChoose ONE WORD ONLY from the passage for each answer.\nWrite your answers in boxes 11-14 on your answer sheet.""",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),

              const SizedBox(height: 24),
              ...[
                for (int i = 6; i < 10; i++) ...[
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
