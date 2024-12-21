import 'package:chemistry_through_english/hard/hard.dart';
import 'package:flutter/material.dart';

class HardTests1 extends StatefulWidget {
  const HardTests1({
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _HardTests1State createState() => _HardTests1State();
}

class _HardTests1State extends State<HardTests1> {
  final List<Map<String, dynamic>> questions = [
    {
      'question':
          '1. According to paragraph 1, John Mayow believed which of the following about air?',
      'options': [
        'A) Air was not involved in chemical reactions such as combustion and respiration',
        'B) The absorption and release of substances in the air depended on the gases in the atmosphere',
        'C) Carbon dioxide was the most important component of air and allowed chemical reactions to take place',
        'D) The air had no chemical properties but contained particles that did',
      ],
      'correctAnswer':
          'B) The absorption and release of substances in the air depended on the gases in the atmosphere',
    },
    {
      'question': '2. What is the main point of paragraph 2?',
      'options': [
        'A) Diderot and d\'Alembert were the first to recognize that gases were a third state of matter',
        'B) Advances in pharmacy and metallurgy led to a better understanding of gases',
        'C) Early chemists had no tools for investigating the chemical properties of gases',
        'D) By performing various tests on solids and liquids, chemists were able to better understand gases',
      ],
      'correctAnswer':
          'B) Advances in pharmacy and metallurgy led to a better understanding of gases',
    },
    {
      'question':
          '3. The word "comparable" in the passage is closest in meaning to',
      'options': ['A) effective', 'B) equivalent', 'C) reliable', 'D) easy'],
      'correctAnswer': 'B) equivalent',
    },
    {
      'question':
          '4. The author includes the quotation from the Encyclopedia of Diderot and d\'Alembert in order to',
      'options': [
        'A) support the argument that pharmacists and metallurgists were better at studying gases than chemists were',
        'B) emphasize that chemists did not consider gases to be a subject for their study',
        'C) suggest that physicists were no more concerned with gases than chemists were',
        'D) argue that Diderot and d\'Alembert deliberately limited the amount of research done on gases',
      ],
      'correctAnswer':
          'B) emphasize that chemists did not consider gases to be a subject for their study',
    },
    {
      'question':
          '5. According to paragraph 4, Hales made an important contribution to chemistry by proposing that chemists do which of the following?',
      'options': [
        'A) Consider mechanical subjects as well as chemical ones',
        'B) Use cleaner air in their experiments',
        'C) Provide detailed descriptions of the devices they used',
        'D) Think about air in chemical terms',
      ],
      'correctAnswer': 'D) Think about air in chemical terms',
    },
    {
      'question':
          '6. The word "staple" in the passage is closest in meaning to',
      'options': [
        'A) regular feature.',
        'B) effective tool.',
        'C) new device.',
        'D) distinct advantage.'
      ],
      'correctAnswer': 'A) regular feature.',
    },
    {
      'question':
          '7. According to paragraph 5, Hales did not understand that air can:',
      'options': [
        'A) take various chemical forms',
        'B) be washed and purified',
        'C) be tested chemically as well as physically',
        'D) be contained for experimentation purposes',
      ],
      'correctAnswer': 'A) take various chemical forms',
    },
    {
      'question':
          '8. Which of the sentences below best expresses the essential information in the highlighted sentence in the passage? Incorrect choices change the meaning in important ways or leave out essential information.',
      'options': [
        'A) Because of Hales\' apparatus, the study of the gaseous state of matter played just as important a role in the chemical revolution as the study of the solid and liquid states did.',
        'B) It was essential for chemists to devise new instruments such as Hales\' apparatus in order to study different states of matter alongside one another.',
        'C) Hales\' apparatus helped revolutionize the field of chemistry by making it possible for chemists to study a third state of matter, the gaseous state.',
        'D) Hales\' apparatus was a key development in the chemical revolution because it allowed scientists to transform gaseous matter into different states of matter.',
      ],
      'correctAnswer':
          'C) Hales\' apparatus helped revolutionize the field of chemistry by making it possible for chemists to study a third state of matter, the gaseous state.',
    },
    {
      'question':
          """9. Look at the four squares [■] that indicate where the following sentence could be added to the passage:


"Like Robert Boyle, another prominent chemist of the time, he conducted experiments that focused on the role of air and air particles in combustion and respiration."


Where would the sentence best fit?
In the field of chemistry, the understanding of the word “air” has undergone radical change. Air for John Mayow, a seventeenth-century chemist, was essentially a receptacle for airborne particles, and through them manifested a variety of chemical properties. 1[■] But although Mayow and a few other chemists did detect specific chemical properties in what we call gases (including our carbon dioxide), most chemists left them unaccounted for until the beginning of the eighteenth century. 2[■] As chemists became aware that the atmosphere itself (and not just particles within it) had a role to play in combustion, r but rather to substances that air could absorb and release according to circumstances, and other reactions, they did not attribute this to the chemical properties of substances. 3[■] Thus, air provided a physical environment in which some reactions took place.
4[■] In the early 1700s, the air was widely seen as just such an environment, and “air” and “the air” were one and the same thing. Chemists were not in the habit of regarding airs or gases as having different chemical properties.""",
      'options': [
        'A) 1',
        'B) 2',
        'C) 3',
        'D) 4',
      ],
      'correctAnswer': 'D) 4',
    },
  ];
  final List<Map<String, dynamic>> lastq = [
    {
      'question':
          """10. Directions: An introductory sentence for a brief summary of the passage is provided below. Complete the summary by selecting the THREE answer choices that express the most important ideas in the passage. Some answer choices do not belong in the summary because they express ideas that are not presented in the passage or are minor ideas in the passage. This question is worth 2 points.
    "Chemists' understanding of what air is has changed considerably since the seventeenth century.\"""",
      'options': [
        'A) Early chemists thought of air as an environment in which reactions took place rather than as a substance with its own chemical properties.',
        'B) Physicists were more likely to study air than early chemists were because physicists had more advanced methods for calculating weights.',
        'C) The invention of the pneumatic trough made it possible to catch, hold, and study air, which in turn led to the possibility of studying gases chemically.',
        'D) As they had no good way of examining the role of air in reactions and were not interested in weighing it, early chemists failed to realize that there were different kinds of air.',
        "E) Chemists were proficient at purifying the air as well as the solids and liquids they used in their experiments long before the invention of the pneumatic trough.",
        "F) Stephen Hales helped to reform the field of chemistry by demonstrating that the air is made up of different gases.",
      ],
      'correctAnswer': [
        'A) Early chemists thought of air as an environment in which reactions took place rather than as a substance with its own chemical properties.',
        'C) The invention of the pneumatic trough made it possible to catch, hold, and study air, which in turn led to the possibility of studying gases chemically.',
        "F) Stephen Hales helped to reform the field of chemistry by demonstrating that the air is made up of different gases.",
      ]
    },
  ];
  List<String> selectedAnswers = [];
  List<bool> isCorrect = [];
  int score = 0;

  void checkAnswer() {
    score = 0;
    isCorrect = List.generate(lastq[0]['options'].length, (index) {
      bool isSelected = selectedAnswers.contains(lastq[0]['options'][index]);
      bool isAnswerCorrect =
          lastq[0]['correctAnswer'].contains(lastq[0]['options'][index]);
      if (isSelected && isAnswerCorrect) {
        score++;
      }
      return isSelected == isAnswerCorrect;
    });
  }

  final Map<int, String?> userAnswers = {}; // To store user-selected answers
  bool isSubmitted = false;

  void handleSubmit() {
    checkAnswer();
    setState(() {
      isSubmitted = true;
    });
    _showResultsDialog();
  }

  void _showResultsDialog() {
    int correctAnswers = 0;

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
          content:
              Text("You got ${correctAnswers + score} out of ${10} correct!"),
          actions: [
            TextButton(
              onPressed: () => {
                Navigator.pop(context),
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Hard()))
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
                "The Evolution of Air Research in Early Chemistry",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                """   In the field of chemistry, the understanding of the word “air” has undergone radical change. Air for John Mayow, a seventeenth-century chemist, was essentially a receptacle for airborne particles, and through them manifested a variety of chemical properties. But although Mayow and a few other chemists did detect specific chemical properties in what we call gases (including our carbon dioxide), most chemists left them unaccounted for until the beginning of the eighteenth century. As chemists became aware that the atmosphere itself (and not just particles within it) had a role to play in combustion, respiration, and other reactions, they did not attribute this to the chemical properties of air but rather to substances that air could absorb and release according to circumstances. Thus, air provided a physical environment in which some reactions took place.
    In the early 1700s, the air was widely seen as just such an environment, and “air” and “the air” were one and the same thing. Chemists were not in the habit of regarding airs or gases as having different chemical properties. There was simply air. One obvious reason for this was practical. Chemists could examine solids and liquids, exposing them to a variety of tests and seeing how they contributed to assorted reactions. Chemists had, however, no comparable way of examining air, and they came to view chemistry as the sum total of the reactions of solids and liquids, excluding gases. Chemists stressed chemical qualities over physical properties like weight and let physicists deal with air. Chemists generally did not examine air, and they did not try to weigh it. That does not mean that chemists did not weigh substances. They did a lot of weighing, and pharmacists and metallurgists did more. But weighing gases was outside their brief. In the Encyclopedia of Diderot and d’Alembert, published between 1751 and 1775, readers were told that “the incoercibility of gases will remove them from our researches for a long time to come.”
    By the time of the Encyclopedia, however, this had begun to change. One of the first and key sources of change was the invention by the Reverend Stephen Hales of a new instrument, the pneumatic trough. This instrument is important for what it made possible in the handling of air. The history of its invention and early use illustrates the difference there may be between the motives for inventing a device and the ways in which that device is used.
    Hales was a botanist and chemist as well as a physiologist. He wrote a book in 1727 investigating mechanical subjects like the pressure of sap in plants. But Hales went further, addressing chemical as well as physiological questions. He urged chemists to consider air chemically. He described an instrument for washing the air produced in the course of a chemical reaction. He wanted to get rid of impurities in the air by letting it pass through water. Air passed from a reaction vessel through water in a trough (or tube) and then into a second vessel that was partly filled with water and that could capture air.
    In devising this apparatus, Hales had coincidentally furnished an instrument for catching and holding air, which could then be subjected to various tests. Used in this way, the apparatus became known as the pneumatic trough. Half a century after its invention, it became a staple of the chemical laboratory. It also became one of the key instruments in the reform of chemistry that we know as the chemical revolution because it was essential to incorporating a whole new state of matter, the gaseous state, into chemistry, alongside the already studied solid and liquid states. Once that step had been taken, it was possible to speculate and then to demonstrate that the gaseous state, like the solid and liquid states, could contain a variety of chemical substances. This was an enormous step, and it did not happen overnight. Hales had shown that air could be contained, washed, and purified, and tested chemically as well as physically. This, however, did not lead him to think that there was more than one kind of air. Air for him remained air, not one of a number of airs. Other chemists would take that essential step.
""",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(height: 16),
              const Text(
                "Questions",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16),

              // Display questions
              ...questions.asMap().entries.map((entry) {
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

                        if (userAnswers[index] != null) {
                          if (userAnswers[index] == option) {
                            buttonColor =
                                userAnswers[index] == question['correctAnswer']
                                    ? Colors.green
                                    : Colors.red;
                          } else if (option == question['correctAnswer']) {
                            buttonColor = Colors.green;
                          }
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
              Text(
                lastq[0]['question'],
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              ...lastq[0]['options'].map((option) {
                // ignore: unused_local_variable
                int index = lastq[0]['options'].indexOf(option);

                // Default option color: transparent background, white text
                Color optionColor = Colors.transparent;
                TextStyle textStyle = const TextStyle(color: Colors.white);

                // Only change the color after submission
                if (isSubmitted) {
                  if (selectedAnswers.contains(option)) {
                    if (lastq[0]['correctAnswer'].contains(option)) {
                      optionColor = Colors.green;
                    } else {
                      optionColor = Colors.red;
                    }
                  } else if (lastq[0]['correctAnswer'].contains(option)) {
                    // Highlight the correct answers that were not selected
                    optionColor = Colors.green;
                  }
                }

                return CheckboxListTile(
                  title: Text(option, style: textStyle),
                  value: selectedAnswers.contains(option),
                  onChanged: isSubmitted
                      ? null
                      : (bool? value) {
                          setState(() {
                            if (value == true) {
                              selectedAnswers.add(option);
                            } else {
                              selectedAnswers.remove(option);
                            }
                          });
                        },
                  activeColor: Colors.blue,
                  checkColor: Colors.white,
                  tileColor: optionColor,
                );
              }).toList(),
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
