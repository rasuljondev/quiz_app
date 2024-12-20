// For random number generation

// EasyQuestion1 model
class EasyQuestion1 {
  final String? title;
  final String questionText;
  final List<String>? options; // Possible answers
  final String? correctAnswer; // Correct answer
  final String type; // Given time for that question
  final String passageText;
  final List<String>? answers;

  EasyQuestion1({
    this.title,
    this.passageText = "",
    this.answers,
    required this.questionText,
    this.options,
    this.correctAnswer,
    required this.type,
  });
}

// List of easy, medium, and hard questions
final List<EasyQuestion1> easyQuestions = [
  EasyQuestion1(
      questionText:
          """In humans, keeping a constant balance between acidity and alkalinity in the blood is essential. If blood pH drops below 7.35 or rises above 7.45, all of the functions in the body are impaired and life-threatening conditions can soon develop.
Many processes in the body produce acid wastes, _______________ would lower the pH of blood below the safe level unless neutralized. Several systems are in place to keep the pH constant within the necessary range. Certain conditions, however, can cause acids to be made faster than these systems can react. Most of the pH control involves three related substances: carbon dioxide, carbonic acid, and bicarbonate ions. Carbonic acid is formed when carbon dioxide reacts with water.""",
      options: ["which", "them", "it"],
      correctAnswer: "which",
      type: "test"),
  EasyQuestion1(
      questionText:
          """Bicarbonate ions are formed when the carbonic acid releases a hydrogen ion. Excess carbonic acid lowers the pH, while excess bicarbonate ions raise ___________
""",
      options: ["which", "them", "it"],
      correctAnswer: "it",
      type: "test"),
  EasyQuestion1(
      questionText:
          """The kidneys store bicarbonate ions and will release or absorb _______________ to help adjust the pH of the blood. Breathing faster removes more carbon dioxide from the blood, which reduces the amount of carbonic acid; in contrast, breathing more slowly has the opposite effect. In a healthy body, these systems automatically neutralize normal amounts of acid wastes and maintain blood pH within the very small range necessary for the body to function normally.""",
      options: ["which", "them", "it"],
      correctAnswer: "them",
      type: "test"),
  EasyQuestion1(
      questionText:
          """In some cases, _________________ systems can be overwhelmed. This can happen to people with diabetes if their blood sugar drops too low for too long. People with diabetes do not make enough insulin, which the body uses to release stored sugar into the blood to supply the body with energy. If a person's insulin level gets too low for too long, the body breaks down fats to use for energy. The waste produced from breaking down fats is acidic, so the blood pH drops.
If the kidneys exhaust their supply of bicarbonate ions, and the lungs cannot remove carbon dioxide fast enough to raise pH, all of the other functions in the body begin to fail as well. The person will need medical treatment to support these functions until the pH balancing system can catch up. The system will then keep the blood pH constant, as long as the production of acid wastes does not exceed the body's capacity to neutralize them.
""",
      options: ["these", "them", "it"],
      correctAnswer: "these",
      type: "test"),
  //Test 1
  EasyQuestion1(
      questionText: "What is the chemical formula for water?",
      options: ["H2O", "CO2", "O2", "H2"],
      correctAnswer: "H2O",
      type: "test"),
  EasyQuestion1(
      questionText: "Which of the following is a noble gas?",
      options: ["Oxygen", "Nitrogen", "Helium", "Hydrogen"],
      correctAnswer: "Helium",
      type: "test"),
  EasyQuestion1(
      questionText: "What is the pH level of pure water?",
      options: ["0", "7", "14", "10"],
      correctAnswer: "7",
      type: "test"),
  EasyQuestion1(
      questionText: "Which element is represented by the symbol 'Na'?",
      options: ["Nitrogen", "Sodium", "Nickel", "Neodymium"],
      correctAnswer: "Sodium",
      type: "test"),
  EasyQuestion1(
      questionText:
          "What type of bond involves the sharing of electron pairs between atoms?",
      options: [
        "Ionic bond",
        "Covalent bond",
        "Metallic bond",
        "Hydrogen bond"
      ],
      correctAnswer: "Covalent bond",
      type: "test"),
  //Test 2
  EasyQuestion1(
      questionText: "What is produced when an acid reacts with a base?",
      options: [
        "Salt and water",
        "Hydrogen gas",
        "Carbon dioxide",
        "Oxygen gas"
      ],
      correctAnswer: "Salt and water",
      type: "test"),
  EasyQuestion1(
      questionText: "In a chemical equation, what does the arrow represent?",
      options: [
        "Equals sign",
        "Reaction direction",
        "Addition of heat",
        "Formation of a solid"
      ],
      correctAnswer: "Reaction direction",
      type: "test"),
  EasyQuestion1(
      questionText:
          "Which of the following is an example of a physical change?",
      options: [
        "Burning wood",
        "Dissolving sugar in water",
        "Rusting iron",
        "Baking a cake"
      ],
      correctAnswer: "Dissolving sugar in water",
      type: "test"),
  EasyQuestion1(
      questionText: "What is the law of conservation of mass?",
      options: [
        "Mass can be created or destroyed.",
        "Mass can change forms.",
        "Mass is always conserved in a chemical reaction.",
        "Mass is irrelevant in chemistry."
      ],
      correctAnswer: "Mass is always conserved in a chemical reaction.",
      type: "test"),
  EasyQuestion1(
      questionText: "Which gas is produced during photosynthesis?",
      options: ["Carbon dioxide", "Oxygen", "Nitrogen", "Methane"],
      correctAnswer: "Oxygen",
      type: "test"),

  // Test 3 Questions: Elements and Compounds
  EasyQuestion1(
      questionText: "What is the smallest unit of an element?",
      options: ["Molecule", "Atom", "Compound", "Ion"],
      correctAnswer: "Atom",
      type: "test"),
  EasyQuestion1(
      questionText: "Which of the following is a compound?",
      options: [
        "O2 (Oxygen)",
        "NaCl (Sodium Chloride)",
        "He (Helium)",
        "N2 (Nitrogen)"
      ],
      correctAnswer: "NaCl (Sodium Chloride)",
      type: "test"),
  EasyQuestion1(
      questionText:
          "What are the vertical columns in the periodic table called?",
      options: ["Rows", "Groups or families", "Periods", "Series"],
      correctAnswer: "Groups or families",
      type: "test"),
  EasyQuestion1(
      questionText: "Which element has the atomic number 1?",
      options: ["Helium", "Lithium", "Hydrogen", "Oxygen"],
      correctAnswer: "Hydrogen",
      type: "test"),
  EasyQuestion1(
      questionText:
          "What do you call substances that cannot be broken down into simpler substances?",
      options: ["Compounds", "Mixtures", "Elements", "Solutions"],
      correctAnswer: "Elements",
      type: "test"),
  EasyQuestion1(
      questionText:
          "If the kidneys exhaust ___________ supply of bicarbonate ions, and the lungs cannot remove carbon dioxide fast enough to raise pH, all of the other functions in the body begin to fail as well.",
      options: [
        "it",
        "them",
        "their",
      ],
      correctAnswer: "their",
      type: "test"),
  EasyQuestion1(
      title: "The Importance of Catalysts in Chemistry",
      passageText: '''
Catalysts play a crucial role in chemical reactions by increasing their speed without being consumed in the process. This is achieved by lowering the activation energy required for the reaction to proceed. Catalysts are used in a variety of applications, from industrial manufacturing to biological processes.
For instance, in the Haber process for producing ammonia, an iron-based catalyst is employed to make the reaction between nitrogen and hydrogen more efficient. Similarly, in biological systems, enzymes act as natural catalysts, facilitating vital processes such as digestion and energy production.
Catalysts also contribute to environmental sustainability. For example, catalytic converters in vehicles reduce harmful emissions by transforming pollutants into less harmful substances. Advances in catalyst design continue to improve efficiency and support greener technologies, making them indispensable in modern chemistry.
  ''',
      questionText:
          'What is the main role of a catalyst in a chemical reaction?',
      options: [
        'A) It gets consumed during the reaction.',
        'B) It decreases the reaction speed.',
        'C) It increases the reaction speed by lowering activation energy.',
        'D) It changes the reactants into a catalyst.'
      ],
      correctAnswer:
          'C) It increases the reaction speed by lowering activation energy.',
      type: "reading"),

  EasyQuestion1(
      title: "The Importance of Catalysts in Chemistry",
      passageText: '''
Catalysts play a crucial role in chemical reactions by increasing their speed without being consumed in the process. This is achieved by lowering the activation energy required for the reaction to proceed. Catalysts are used in a variety of applications, from industrial manufacturing to biological processes.
For instance, in the Haber process for producing ammonia, an iron-based catalyst is employed to make the reaction between nitrogen and hydrogen more efficient. Similarly, in biological systems, enzymes act as natural catalysts, facilitating vital processes such as digestion and energy production.
Catalysts also contribute to environmental sustainability. For example, catalytic converters in vehicles reduce harmful emissions by transforming pollutants into less harmful substances. Advances in catalyst design continue to improve efficiency and support greener technologies, making them indispensable in modern chemistry.
  ''',
      questionText:
          'Which of the following processes uses an iron-based catalyst?',
      options: [
        'A) Catalytic conversion in vehicles',
        'B) Digestion in humans',
        'C) Haber process for ammonia production',
        'D) Energy production in cells'
      ],
      correctAnswer: 'C) Haber process for ammonia production',
      type: "reading"),
  EasyQuestion1(
      title: "The Importance of Catalysts in Chemistry",
      passageText: '''
Catalysts play a crucial role in chemical reactions by increasing their speed without being consumed in the process. This is achieved by lowering the activation energy required for the reaction to proceed. Catalysts are used in a variety of applications, from industrial manufacturing to biological processes.
For instance, in the Haber process for producing ammonia, an iron-based catalyst is employed to make the reaction between nitrogen and hydrogen more efficient. Similarly, in biological systems, enzymes act as natural catalysts, facilitating vital processes such as digestion and energy production.
Catalysts also contribute to environmental sustainability. For example, catalytic converters in vehicles reduce harmful emissions by transforming pollutants into less harmful substances. Advances in catalyst design continue to improve efficiency and support greener technologies, making them indispensable in modern chemistry.
  ''',
      questionText:
          'What is the primary benefit of using catalytic converters in vehicles?',
      options: [
        'A) Enhancing fuel efficiency',
        'B) Reducing harmful emissions',
        'C) Speeding up combustion',
        'D) Lowering vehicle weight'
      ],
      correctAnswer: 'B) Reducing harmful emissions',
      type: "reading"),
  EasyQuestion1(
      title: "The Importance of Catalysts in Chemistry",
      passageText: '''
Catalysts play a crucial role in chemical reactions by increasing their speed without being consumed in the process. This is achieved by lowering the activation energy required for the reaction to proceed. Catalysts are used in a variety of applications, from industrial manufacturing to biological processes.
For instance, in the Haber process for producing ammonia, an iron-based catalyst is employed to make the reaction between nitrogen and hydrogen more efficient. Similarly, in biological systems, enzymes act as natural catalysts, facilitating vital processes such as digestion and energy production.
Catalysts also contribute to environmental sustainability. For example, catalytic converters in vehicles reduce harmful emissions by transforming pollutants into less harmful substances. Advances in catalyst design continue to improve efficiency and support greener technologies, making them indispensable in modern chemistry.
  ''',
      questionText: 'What do enzymes and industrial catalysts have in common?',
      options: [
        'A) They are both made of iron.',
        'B) They are consumed during reactions.',
        'C) They lower activation energy to speed up reactions.',
        'D) They only work at high temperatures.'
      ],
      correctAnswer: 'C) They lower activation energy to speed up reactions.',
      type: "reading"),
  EasyQuestion1(
      title: "The Importance of Catalysts in Chemistry",
      passageText: '''
Catalysts play a crucial role in chemical reactions by increasing their speed without being consumed in the process. This is achieved by lowering the activation energy required for the reaction to proceed. Catalysts are used in a variety of applications, from industrial manufacturing to biological processes.
For instance, in the Haber process for producing ammonia, an iron-based catalyst is employed to make the reaction between nitrogen and hydrogen more efficient. Similarly, in biological systems, enzymes act as natural catalysts, facilitating vital processes such as digestion and energy production.
Catalysts also contribute to environmental sustainability. For example, catalytic converters in vehicles reduce harmful emissions by transforming pollutants into less harmful substances. Advances in catalyst design continue to improve efficiency and support greener technologies, making them indispensable in modern chemistry.
  ''',
      questionText:
          'Why are catalysts considered important for environmental sustainability?',
      options: [
        'A) They require no maintenance.',
        'B) They transform pollutants into less harmful substances.',
        'C) They eliminate the need for raw materials.',
        'D) They work without energy input.'
      ],
      correctAnswer:
          'B) They transform pollutants into less harmful substances.',
      type: "reading"),
  EasyQuestion1(
      title: "The Periodic Table of Elements",
      passageText:
          '''The periodic table is a systematic arrangement of elements based on their atomic number, electron configurations, and recurring chemical properties. Elements in the same group have similar chemical behavior because they share the same number of valence electrons. Metals, located on the left side of the table, are generally good conductors of electricity and heat. Nonmetals, found on the right side, are often poor conductors. The periodic table has greatly advanced the study of chemistry by predicting the properties of elements yet to be discovered.
''',
      questionText:
          'The periodic table organizes elements based on their atomic number.',
      options: [
        'A) True',
        'B) False',
      ],
      correctAnswer: 'A) True',
      type: "reading"),
  EasyQuestion1(
      title: "The Periodic Table of Elements",
      passageText:
          '''The periodic table is a systematic arrangement of elements based on their atomic number, electron configurations, and recurring chemical properties. Elements in the same group have similar chemical behavior because they share the same number of valence electrons. Metals, located on the left side of the table, are generally good conductors of electricity and heat. Nonmetals, found on the right side, are often poor conductors. The periodic table has greatly advanced the study of chemistry by predicting the properties of elements yet to be discovered.
''',
      questionText:
          'Nonmetals are located on the left side of the periodic table.',
      options: [
        'A) True',
        'B) False',
      ],
      correctAnswer: 'B) False',
      type: "reading"),
  EasyQuestion1(
      title: "The Periodic Table of Elements",
      passageText:
          '''The periodic table is a systematic arrangement of elements based on their atomic number, electron configurations, and recurring chemical properties. Elements in the same group have similar chemical behavior because they share the same number of valence electrons. Metals, located on the left side of the table, are generally good conductors of electricity and heat. Nonmetals, found on the right side, are often poor conductors. The periodic table has greatly advanced the study of chemistry by predicting the properties of elements yet to be discovered.
''',
      questionText:
          'Elements in the same group share the same number of valence electrons',
      options: [
        'A) True',
        'B) False',
      ],
      correctAnswer: 'A) True',
      type: "reading"),
  EasyQuestion1(
      title: "The Periodic Table of Elements",
      passageText:
          '''The periodic table is a systematic arrangement of elements based on their atomic number, electron configurations, and recurring chemical properties. Elements in the same group have similar chemical behavior because they share the same number of valence electrons. Metals, located on the left side of the table, are generally good conductors of electricity and heat. Nonmetals, found on the right side, are often poor conductors. The periodic table has greatly advanced the study of chemistry by predicting the properties of elements yet to be discovered.
''',
      questionText: 'Metals are poor conductors of electricity and heat.',
      options: [
        'A) True',
        'B) False',
      ],
      correctAnswer: 'B) False',
      type: "reading"),
  EasyQuestion1(
    title: "Properties of Water",
    passageText: '''
Water is a unique substance essential for life. Its chemical formula is H₂O, which means each molecule consists of two hydrogen atoms bonded to one oxygen atom. Water is known for its high specific heat capacity, which allows it to absorb and release heat without significant temperature changes. This property helps regulate temperatures in the environment.
Water is also an excellent solvent, often called the "universal solvent" because it can dissolve a wide range of substances. This ability makes it vital for transporting nutrients and waste in biological systems. Additionally, water has a high surface tension due to hydrogen bonding between molecules, which allows small insects to walk on its surface.
  ''',
    questionText: 'What is the chemical formula for water?',
    options: ['A) H₂O', 'B) CO₂', 'C) O₂', 'D) NaCl'],
    correctAnswer: 'A) H₂O',
    type: "reading",
  ),
  EasyQuestion1(
    title: "Properties of Water",
    passageText: '''
Water is a unique substance essential for life. Its chemical formula is H₂O, which means each molecule consists of two hydrogen atoms bonded to one oxygen atom. Water is known for its high specific heat capacity, which allows it to absorb and release heat without significant temperature changes. This property helps regulate temperatures in the environment.
Water is also an excellent solvent, often called the "universal solvent" because it can dissolve a wide range of substances. This ability makes it vital for transporting nutrients and waste in biological systems. Additionally, water has a high surface tension due to hydrogen bonding between molecules, which allows small insects to walk on its surface.
  ''',
    questionText: 'Why is water called the "universal solvent"?',
    options: [
      'A) It is essential for life.',
      'B) It has a high specific heat capacity.',
      'C) It can dissolve a wide range of substances.',
      'D) It has a high surface tension.'
    ],
    correctAnswer: 'C) It can dissolve a wide range of substances.',
    type: "reading",
  ),
  EasyQuestion1(
    title: "Properties of Water",
    passageText: '''
Water is a unique substance essential for life. Its chemical formula is H₂O, which means each molecule consists of two hydrogen atoms bonded to one oxygen atom. Water is known for its high specific heat capacity, which allows it to absorb and release heat without significant temperature changes. This property helps regulate temperatures in the environment.
Water is also an excellent solvent, often called the "universal solvent" because it can dissolve a wide range of substances. This ability makes it vital for transporting nutrients and waste in biological systems. Additionally, water has a high surface tension due to hydrogen bonding between molecules, which allows small insects to walk on its surface.
  ''',
    questionText: 'What allows insects to walk on the surface of water?',
    options: [
      'A) Its specific heat capacity',
      'B) Its high surface tension',
      'C) Its solvent properties',
      'D) Its chemical formula'
    ],
    correctAnswer: 'B) Its high surface tension',
    type: "reading",
  ),
  EasyQuestion1(
    title: "Properties of Water",
    passageText: '''
Water is a unique substance essential for life. Its chemical formula is H₂O, which means each molecule consists of two hydrogen atoms bonded to one oxygen atom. Water is known for its high specific heat capacity, which allows it to absorb and release heat without significant temperature changes. This property helps regulate temperatures in the environment.
Water is also an excellent solvent, often called the "universal solvent" because it can dissolve a wide range of substances. This ability makes it vital for transporting nutrients and waste in biological systems. Additionally, water has a high surface tension due to hydrogen bonding between molecules, which allows small insects to walk on its surface.
  ''',
    questionText:
        'Which property of water helps regulate environmental temperatures?',
    options: [
      'A) Its chemical bonding',
      'B) Its ability to dissolve substances',
      'C) Its high specific heat capacity',
      'D) Its low density'
    ],
    correctAnswer: 'C) Its high specific heat capacity',
    type: "reading",
  ),
  EasyQuestion1(
    title: "Properties of Water",
    passageText: '''
Water is a unique substance essential for life. Its chemical formula is H₂O, which means each molecule consists of two hydrogen atoms bonded to one oxygen atom. Water is known for its high specific heat capacity, which allows it to absorb and release heat without significant temperature changes. This property helps regulate temperatures in the environment.
Water is also an excellent solvent, often called the "universal solvent" because it can dissolve a wide range of substances. This ability makes it vital for transporting nutrients and waste in biological systems. Additionally, water has a high surface tension due to hydrogen bonding between molecules, which allows small insects to walk on its surface.
  ''',
    questionText: 'What does the term "specific heat capacity" mean?',
    options: [
      'A) The heat needed to change the temperature of water.',
      'B) The ability to dissolve other substances.',
      'C) The ability to bond with oxygen.',
      'D) The movement of molecules in a liquid.'
    ],
    correctAnswer: 'A) The heat needed to change the temperature of water.',
    type: "reading",
  ),
  EasyQuestion1(
    title: "Structure of an Atom",
    passageText: '''
Atoms are the building blocks of matter. Each atom consists of three main subatomic particles: protons, neutrons, and electrons. Protons, which are positively charged, and neutrons, which have no charge, are found in the nucleus at the center of the atom. Electrons, which are negatively charged, orbit the nucleus in energy levels or shells.
The atomic number of an atom is determined by the number of protons it has. For example, hydrogen has one proton, so its atomic number is 1. The mass number is the total number of protons and neutrons in an atom. Electrons are much smaller than protons and neutrons and contribute little to the mass of an atom.
  ''',
    questionText: 'Where are protons and neutrons located in an atom?',
    options: [
      'A) In the electron shells',
      'B) In the nucleus',
      'C) In the outermost energy level',
      'D) Throughout the atom'
    ],
    correctAnswer: 'B) In the nucleus',
    type: "reading",
  ),
  EasyQuestion1(
    title: "Structure of an Atom",
    passageText: '''
Atoms are the building blocks of matter. Each atom consists of three main subatomic particles: protons, neutrons, and electrons. Protons, which are positively charged, and neutrons, which have no charge, are found in the nucleus at the center of the atom. Electrons, which are negatively charged, orbit the nucleus in energy levels or shells.
The atomic number of an atom is determined by the number of protons it has. For example, hydrogen has one proton, so its atomic number is 1. The mass number is the total number of protons and neutrons in an atom. Electrons are much smaller than protons and neutrons and contribute little to the mass of an atom.
  ''',
    questionText: 'What is the charge of a proton?',
    options: ['A) Negative', 'B) Neutral', 'C) Positive', 'D) No charge'],
    correctAnswer: 'C) Positive',
    type: "reading",
  ),
  EasyQuestion1(
    title: "Structure of an Atom",
    passageText: '''
Atoms are the building blocks of matter. Each atom consists of three main subatomic particles: protons, neutrons, and electrons. Protons, which are positively charged, and neutrons, which have no charge, are found in the nucleus at the center of the atom. Electrons, which are negatively charged, orbit the nucleus in energy levels or shells.
The atomic number of an atom is determined by the number of protons it has. For example, hydrogen has one proton, so its atomic number is 1. The mass number is the total number of protons and neutrons in an atom. Electrons are much smaller than protons and neutrons and contribute little to the mass of an atom.
  ''',
    questionText: 'What determines the atomic number of an atom?',
    options: [
      'A) The number of electrons',
      'B) The number of neutrons',
      'C) The total number of protons',
      'D) The number of protons and neutrons'
    ],
    correctAnswer: 'C) The total number of protons',
    type: "reading",
  ),
  EasyQuestion1(
    title: "Structure of an Atom",
    passageText: '''
Atoms are the building blocks of matter. Each atom consists of three main subatomic particles: protons, neutrons, and electrons. Protons, which are positively charged, and neutrons, which have no charge, are found in the nucleus at the center of the atom. Electrons, which are negatively charged, orbit the nucleus in energy levels or shells.
The atomic number of an atom is determined by the number of protons it has. For example, hydrogen has one proton, so its atomic number is 1. The mass number is the total number of protons and neutrons in an atom. Electrons are much smaller than protons and neutrons and contribute little to the mass of an atom.
  ''',
    questionText: 'Which particle orbits the nucleus of an atom?',
    options: ['A) Proton', 'B) Neutron', 'C) Electron', 'D) Ion'],
    correctAnswer: 'C) Electron',
    type: "reading",
  ),
  EasyQuestion1(
    title: "Structure of an Atom",
    passageText: '''
Atoms are the building blocks of matter. Each atom consists of three main subatomic particles: protons, neutrons, and electrons. Protons, which are positively charged, and neutrons, which have no charge, are found in the nucleus at the center of the atom. Electrons, which are negatively charged, orbit the nucleus in energy levels or shells.
The atomic number of an atom is determined by the number of protons it has. For example, hydrogen has one proton, so its atomic number is 1. The mass number is the total number of protons and neutrons in an atom. Electrons are much smaller than protons and neutrons and contribute little to the mass of an atom.
  ''',
    questionText: 'What does the mass number of an atom represent?',
    options: [
      'A) The number of electrons in the atom',
      'B) The number of protons and neutrons in the atom',
      'C) The total mass of the atom',
      'D) The number of protons in the atom'
    ],
    correctAnswer: 'B) The number of protons and neutrons in the atom',
    type: "reading",
  ),
];
