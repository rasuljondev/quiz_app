import 'package:chemistry_through_english/medium/medium.dart';
import 'package:flutter/material.dart';

class MediumTest1 extends StatefulWidget {
  const MediumTest1({super.key});

  @override
  _MediumTest1State createState() => _MediumTest1State();
}

class _MediumTest1State extends State<MediumTest1> {
  final List<Map<String, dynamic>> questions = [
    {
      "question":
          "Marie Curie’s husband was a joint winner of both Marie’s Nobel Prizes.",
      "answer": "False"
    },
    {
      "question": "Marie became interested in science when she was a child.",
      "answer": "False"
    },
    {
      "question":
          "Marie was able to attend the Sorbonne because of her sister’s financial contribution.",
      "answer": "False"
    },
    {
      "question":
          "Marie stopped doing research for several years when her children were born.",
      "answer": "True"
    },
    {
      "question": "Marie took over the teaching position her husband had held.",
      "answer": "False"
    },
    {
      "question":
          "Marie’s sister Bronia studied the medical uses of radioactivity.",
      "answer": "Not Given"
    },
  ];

  final Map<int, String?> userAnswers = {}; // To store user-selected answers
  final Map<int, bool?> questionResults =
      {}; // To store correct/incorrect results
  final List<Map<String, dynamic>> textFieldQuestions = [
    {
      "question":
          "7. When uranium was discovered to be radioactive, Marie Curie found that the element called 7 had the same property.",
      "answer": "thorium"
    },
    {
      "question":
          "8. Marie and Pierre Curie’s research into the radioactivity of the mineral known as 8 led to the discovery of two new elements.",
      "answer": "pitchblende"
    },
    {
      "question":
          "9. In 1911, Marie Curie received recognition for her work on the element 9",
      "answer": "radium"
    },
    {
      "question":
          "10. Marie and Irene Curie developed X-radiography which was used as a medical technique for 10",
      "answer": "soldiers"
    },
    {
      "question":
          "11. Marie Curie saw the importance of collecting radioactive material both for research and for cases of 11",
      "answer": "illness"
    },
    {
      "question":
          "12. The radioactive material stocked in Paris contributed to the discoveries in the 1930s of the 12 and of what was known as artificial radioactivity.",
      "answer": "neutron"
    },
    {
      "question":
          "13. During her research, Marie Curie was exposed to radiation and as a result she suffered from 13",
      "answer": "leukaemia / leukemia"
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

    // Count correct answers for True/False/Not Given questions
    for (int i = 0; i < questions.length; i++) {
      if (userAnswers[i] == questions[i]["answer"]) {
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
        title: const Text("Test 1", style: TextStyle(color: Colors.white)),
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
                "The life and work of Marie Curie",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("assets/image.png"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                """             Marie Curie is probably the most famous woman scientist who has ever lived. Born Maria Sklodowska in Poland in 1867, she is famous for her work on radioactivity, and was twice a winner of the Nobel Prize. With her husband, Pierre Curie, and Henri Becquerel,she was awarded the 1903 Nobel Prize for Physics, and was then sole winner of the 1911 Nobel Prize for Chemistry. She was the first woman to win a Nobel Prize.
              From childhood, Marie was remarkable for her prodigious memory, and at the age of 16 won a gold medal on completion of her secondary education. Because her father lost his savings through bad investment, she then had to take work as a teacher. From her earnings she was able to finance her sister Bronia's medical studies in Paris, on the understanding that Bronia would, in turn, later help her to get an education.
              In 1891 this promise was fulfilled and Marie went to Paris and began to study at the Sorbonne (the University of Paris). She often worked far into the night and lived on little more than bread and butter and tea. She came first in the examination in the physical  sciences in 1893, and in 1894 was placed second in the examination in mathematical sciences. It was not until the spring of that year that she was introduced to Pierre Curie.
              Their marriage in 1895 marked the start of a partnership that was soon to achieve results of world significance. Following Henri Becquerel's discovery in 1896 of a new phenomenon, which Marie later called 'radioactivity', Marie Curie decided to find out if the radioactivity discovered in uranium was to be found in other elements. She discovered that this was true for thorium.
              Turning her attention to minerals, she found her interest drawn to  pitchblende, a mineral whose radioactivity, superior to that of pure uranium, could be explained only by the presence in the ore of small quantities of an unknown substance of very high activity. Pierre Curie joined her in the work that she had undertaken to resolve this problem, and that led to the discovery of the new elements, polonium and radium. While Pierre Curie devoted himself chiefly to the physical study of the new radiations, Marie Curie struggled to obtain pure radium in the metallic state. This was achieved with the help of the chemist André-Louis Debierne, one of Pierre Curie's pupils. Based on the results of this research, Marie Curie received her Doctorate of  Science, and in 1903 Marie and Pierre shared with Becquerel the Nobel Prize for Physics for the discovery of radioactivity.
              The births of Marie's two daughters, Irène and Eve, in 1897 and 1904 failed to interrupt her scientific work. She was appointed lecturer in physics at the École Normale Supérieure for girls in Sèvres, France (1900), and introduced a method of teaching based on experimental demonstrations. In December 1904 she was appointed chief assistant in the laboratory directed by Pierre Curie.
              The sudden death of her husband in 1906 was a bitter blow to Marie Curie, but was also a turning point in her career: henceforth she was to devote all her energy to completing alone the scientific work that they had undertaken. On May 13, 1906, she was appointed to the professorship that had been left vacant on her husband's death, becoming the first woman to teach at the Sorbonne. In 1911 she was awarded the Nobel Prize for Chemistry for the isolation of a pure form of  radium.
              During World War I, Marie Curie, with the help of her daughter Irène, devoted herself to the development of the use of X-radiography, including the mobile units which came to be known as ‘Little Curies', used for the treatment of wounded  soldiers. In 1918 the Radium Institute, whose staff Irène had joined, began to operate in earnest, and became a centre for nuclear physics and chemistry. Marie Curie, now at the highest point of her fame and, from 1922, a member of the Academy of Medicine, researched the chemistry of radioactive substances and their medical applications.
              In 1921, accompanied by her two daughters, Marie Curie made a triumphant journey to the United States to raise funds for research on radium. Women there presented her with a gram of radium for her campaign. Marie also gave lectures in Belgium, Brazil, Spain and Czechoslovakia and, in addition, had the satisfaction of seeing the development of the Curie Foundation in Paris, and the inauguration in 1932 in Warsaw of the Radium Institute, where her sister Bronia became director.
              One of Marie Curie's outstanding achievements was to have understood the need to accumulate intense radioactive sources, not only to treat illness but also to maintain an abundant supply for research. The existence in Paris at the Radium Institute of a stock of 1.5 grams of radium made a decisive contribution to the success of the experiments undertaken in the years around 1930. This work prepared the way for the discovery of the neutron by Sir James Chadwick and, above all, for the discovery in 1934 by Irène and Frédéric Joliot-Curie of artificial radioactivity. A few months after this discovery, Marie Curie died as a result of  leukaemia caused by exposure to radiation. She had often carried test tubes containing radioactive isotopes in her pocket, remarking on the pretty blue-green light they gave off.
              Her contribution to physics had been immense, not only in her own work, the importance of which had been demonstrated by her two Nobel Prizes, but because of her influence on subsequent generations of nuclear physicists and chemists.
              """,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Text(
                """Questions 1-6\nDo the following statements agree with the information given in Reading Passage?\nIn boxes 1-6 on your answer sheet, write:\nTRUE    if the statement agrees with the information\nFALSE    if the statement contradicts the information\nNOT GIVEN    if there is no information on this\n""",
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
                      "${index + 1}. ${question['question']}",
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: ["True", "False", "Not Given"].map((option) {
                        Color buttonColor = Colors.blue; // Default button color

                        if (userAnswers[index] != null) {
                          // Show correct/incorrect feedback based on answer
                          if (userAnswers[index] == option) {
                            if (userAnswers[index] == question["answer"]) {
                              buttonColor = Colors.green; // Correct answer
                            } else {
                              buttonColor =
                                  Colors.red; // Incorrect selected answer
                            }
                          } else if (option == question["answer"]) {
                            buttonColor =
                                Colors.green; // Correct answer (other button)
                          }
                        } else if (userAnswers[index] == option) {
                          buttonColor =
                              Colors.grey; // Selected but not submitted yet
                        }

                        return Expanded(
                          child: GestureDetector(
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
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              child: Center(
                                child: Text(
                                  option,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
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
