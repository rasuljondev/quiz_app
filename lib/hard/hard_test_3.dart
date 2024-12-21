import 'package:chemistry_through_english/hard/reusable_hard_test.dart';
import 'package:flutter/material.dart';

class HardTests3 extends StatelessWidget {
  const HardTests3({super.key});

  @override
  Widget build(BuildContext context) {
    return const ReusableHardTests(
      pageTitle: "Test 3",
      textTitle: "Types of Chemical Reactions",
      longText:
          """   Chemical reactions involve the breaking and forming of bonds between atoms. There are several types of chemical reactions, each with distinct characteristics:
    1. Synthesis Reaction: In this type, two or more substances combine to form a single product. For example, when hydrogen gas reacts with oxygen gas, water (H₂O) is formed.
    2. Decomposition Reaction: This occurs when a single compound breaks down into two or more simpler substances. For instance, the decomposition of calcium carbonate (CaCO₃) produces calcium oxide (CaO) and carbon dioxide (CO₂).
    3. Single Displacement Reaction: In this reaction, one element displaces another in a compound. For example, zinc displaces hydrogen in hydrochloric acid to form zinc chloride (ZnCl₂) and hydrogen gas (H₂).
    4. Double Displacement Reaction: This involves the exchange of ions between two compounds, often forming a precipitate. For example, mixing solutions of silver nitrate (AgNO₃) and sodium chloride (NaCl) results in silver chloride (AgCl) and sodium nitrate (NaNO₃).
    5. Combustion Reaction: In this reaction, a substance combines with oxygen to produce energy, usually in the form of heat and light. An example is the combustion of methane (CH₄) to form carbon dioxide and water.
    Understanding the types of reactions is crucial for predicting products and balancing chemical equations.
""",
      questions: [
        {
          'question':
              '1. Which type of reaction involves combining two substances to form one product?',
          'options': [
            'A. Decomposition reaction',
            'B. Synthesis reaction',
            'C. Single displacement reaction',
            'D. Combustion reaction',
          ],
          'correctAnswer': 'B. Synthesis reaction',
        },
        {
          'question':
              '2. What are the products of calcium carbonate decomposition?',
          'options': [
            'A. Calcium oxide and carbon dioxide',
            'B. Water and oxygen',
            'C. Sodium chloride and silver nitrate',
            'D. Methane and oxygen',
          ],
          'correctAnswer': 'A. Calcium oxide and carbon dioxide',
        },
        {
          'question':
              '3. What is a characteristic of a single displacement reaction?',
          'options': [
            'A. Two compounds exchange ions.',
            'B. One compound breaks down into simpler substances.',
            'C. One element replaces another in a compound.',
            'D. A substance reacts with oxygen to release energy.',
          ],
          'correctAnswer': 'C. One element replaces another in a compound.',
        },
        {
          'question': '4. What type of reaction occurs when methane burns?',
          'options': [
            'A. Synthesis reaction',
            'B. Decomposition reaction',
            'C. Combustion reaction',
            'D. Double displacement reaction',
          ],
          'correctAnswer': 'C. Combustion reaction',
        },
        {
          'question':
              '5. What typically forms in a double displacement reaction?',
          'options': [
            'A. Heat and light',
            'B. A single compound',
            'C. A precipitate',
            'D. A simpler element',
          ],
          'correctAnswer': 'C. A precipitate',
        },
      ],
    );
  }
}
