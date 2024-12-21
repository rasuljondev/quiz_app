import 'package:chemistry_through_english/hard/hard.dart';
import 'package:flutter/material.dart';

class HardTests2 extends StatefulWidget {
  const HardTests2({super.key});

  @override
  _HardTests2State createState() => _HardTests2State();
}

class _HardTests2State extends State<HardTests2> {
  final List<Map<String, dynamic>> mquestions = [
    {
      "question":
          "1 Michael Faraday was the first person to recognise Perkin’s ability as a student of chemistry.",
      "options": ["TRUE", "FALSE", "NOT GIVEN"],
      "answer": "FALSE"
    },
    {
      "question":
          "2 Michael Faraday suggested Perkin should enrol in the Royal College of Chemistry.",
      "options": ["TRUE", "FALSE", "NOT GIVEN"],
      "answer": "NOT GIVEN"
    },
    {
      "question": "3 Perkin employed August Wilhelm Hofmann as his assistant.",
      "options": ["TRUE", "FALSE", "NOT GIVEN"],
      "answer": "FALSE"
    },
    {
      "question":
          "4 Perkin was still young when he made the discovery that made him rich and famous.",
      "options": ["TRUE", "FALSE", "NOT GIVEN"],
      "answer": "TRUE"
    },
    {
      "question":
          "5 The trees from which quinine is derived grow only in South America.",
      "options": ["TRUE", "FALSE", "NOT GIVEN"],
      "answer": "NOT GIVEN"
    },
    {
      "question":
          "6 Perkin hoped to manufacture a drug from a coal tar waste product.",
      "options": ["TRUE", "FALSE", "NOT GIVEN"],
      "answer": "TRUE"
    },
    {
      "question":
          "7 Perkin was inspired by the discoveries of the famous scientist Louis Pasteur",
      "options": ["TRUE", "FALSE", "NOT GIVEN"],
      "answer": "NOT GIVEN"
    },
  ];

  // To store correct/incorrect results
  final List<Map<String, dynamic>> textFieldQuestions = [
    {
      "question":
          "8 Before Perkin’s discovery, with what group in society was the colour purple associated?",
      "answer": "rich"
    },
    {
      "question":
          "9 What potential did Perkin immediately understand that his new dye had?",
      "answer": "commercial"
    },
    {
      "question":
          "10 What was the name finally used to refer to the first colour Perkin invented?",
      "answer": "mauve"
    },
    {
      "question":
          "11 What was the name of the person Perkin consulted before setting up his own dye works?",
      "answer": "pullar"
    },
    {
      "question":
          "12 In what country did Perkin’s newly invented colour first become fashionable?",
      "answer": "france"
    },
    {
      "question":
          "13 According to the passage, which disease is now being targeted by researchers using synthetic dyes?",
      "answer": "malaria"
    },
  ];
  final Map<int, String?> muserAnswers = {};
  final Map<int, String?> userAnswers = {}; // To store user-selected answers
  final Map<int, bool?> questionResults = {};
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
    int score = 0;

    for (int i = 0; i < mquestions.length; i++) {
      if (muserAnswers[i] == mquestions[i]["answer"]) {
        score++;
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
          content:
              Text("You got ${correctAnswers + score} out of ${13} correct!"),
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
                "The man who invented synthetic dyes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              const Text(
                """   William Henry Perkin was born on March 12,1838, in London, England. 
    As a boy, Perkin’s curiosity prompted early interests in the arts, sciences, photography, and engineering. But it was a chance stumbling upon a run-down, yet functional, laboratory in his late grandfather’s home that solidified the young man’s enthusiasm for chemistry.
    As a student at the City of London School, Perkin became immersed in the study of chemistry. His talent and devotion to the subject were perceived by his teacher, Thomas Hall, who encouraged him to attend a series of lectures given by the eminent scientist Michael Faraday at the Royal Institution. Those speeches fired the young chemist’s enthusiasm further, and he later went on to attend the Royal College of Chemistry, which he succeeded in entering in 1853, at the age of 15.
    At the time of Perkin’s enrolment, the Royal College of Chemistry was headed by the noted German chemist August Wilhelm Hofmann. Perkin’s scientific gifts soon caught Hofmann’s attention and, within two years, he became Hofmann’s youngest assistant. Not long after that, Perkin made the scientific breakthrough that would bring him both fame and fortune.
    At the time, quinine was the only viable medical treatment for malaria. The drug is derived from the bark of the cinchona tree, native to South America, and by 1856 demand for the drug was surpassing the available supply. Thus, when Hofmann made some passing comments about the desirability of a synthetic substitute for quinine, it was unsurprising that his star pupil was moved to take up the challenge.
    During his vacation in 1856, Perkin spent his time in the laboratory on the top floor of his family’s house. He was attempting to manufacture quinine from aniline, an inexpensive and readily available coal tar waste product. Despite his best efforts, however, he did not end up with quinine. Instead, he produced a mysterious dark sludge. Luckily, Perkin’s scientific training and nature prompted him to investigate the substance further. Incorporating potassium dichromate and alcohol into the aniline at various stages of the experimental process, he finally produced a deep purple solution. And, proving the truth of the famous scientist Louis Pasteur’s words ‘chance favours only the prepared mind’, Perkin saw the potential of his unexpected find.
    Historically, textile dyes were made from such natural sources as plants and animal excretions. Some of these, such as the glandular mucus of snails, were difficult to obtain and outrageously expensive. Indeed, the purple colour extracted from a snail was once so costly that in society at the time only the rich could afford it. Further, natural dyes tended to be muddy in hue and fade quickly. It was against this backdrop that Perkin’s discovery was made.
    Perkin quickly grasped that his purple solution could be used to colour fabric, thus making it the world’s first synthetic dye. Realising the importance of this breakthrough, he lost no time in patenting it. But perhaps the most fascinating of all Perkin’s reactions to his find was his nearly instant recognition that the new dye had commercial possibilities.
    Perkin originally named his dye Tyrian Purple, but it later became commonly known as mauve (from the French for the plant used to make the colour violet). He asked advice of Scottish dye works owner Robert Pullar, who assured him that manufacturing the dye would be well worth it if the colour remained fast (i.e. would not fade) and the cost was relatively low. So, over the fierce objections of his mentor Hofmann, he left college to give birth to the modern chemical industry.
    With the help of his father and brother, Perkin set up a factory not far from London. Utilising the cheap and plentiful coal tar that was an almost unlimited by product of London’s gas street lighting, the dye works began producing the world’s first synthetically dyed material in 1857. The company received a commercial boost from the Empress Eugenie of France, when she decided the new colour flattered her. Very soon, mauve was the necessary shade for all the fashionable ladies in that country.
    Not to be outdone, England’s Queen Victoria also appeared in public wearing a mauve gown, thus making it all the rage in England as well. The dye was bold and fast, and the public clamoured for more. Perkin went back to the drawing board.
    Although Perkin’s fame was achieved and fortune assured by his first discovery, the chemist continued his research. Among other dyes he developed and introduced were aniline red (1859) and aniline black (1863) and, in the late 1860s, Perkin’s green. It is important to note that Perkin’s synthetic dye discoveries had outcomes far beyond the merely decorative. The dyes also became vital to medical research in many ways. For instance, they were used to stain previously invisible microbes and bacteria, allowing researchers to identify such bacilli as tuberculosis, cholera, and anthrax. Artificial dyes continue to play a crucial role today. And, in what would have been particularly pleasing to Perkin, their current use is in the search for a vaccine against malaria.
""",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Text(
                """Questions 1-7\nDo the following statements agree with the information given in Reading Passage? In boxes 1-7 on your answer sheet, write


TRUE    if the statement agrees with the information
FALSE    if the statement contradicts the information
NOT GIVEN    if there is no information on this
""",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),

              /// Display questions
              ...mquestions.asMap().entries.map((entry) {
                int index = entry.key;
                Map<String, dynamic> question = entry.value;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question['question'],
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(height: 8),
                    Column(
                      children: question['options'].map<Widget>((option) {
                        Color buttonColor = Colors.blue;

                        if (muserAnswers[index] != null) {
                          if (muserAnswers[index] == option) {
                            buttonColor =
                                muserAnswers[index] == question['answer']
                                    ? Colors.green
                                    : Colors.red;
                          } else if (option == question['answer']) {
                            buttonColor = Colors.green;
                          }
                        }

                        return GestureDetector(
                          onTap: () {
                            if (muserAnswers[index] == null) {
                              setState(() {
                                muserAnswers[index] = option;
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
                """Questions 8-13

Answer the questions below.
Choose ONE WORD from the passage for each answer. Write your answers in boxes 8-13 on your answer sheet.""",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),

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
