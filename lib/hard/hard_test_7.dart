import 'package:chemistry_through_english/hard/reusable_hard_test.dart';
import 'package:flutter/material.dart';

class HardTests7 extends StatelessWidget {
  const HardTests7({super.key});

  @override
  Widget build(BuildContext context) {
    return const ReusableHardTests(
      pageTitle: "Test 7",
      textTitle: "Chemical Equilibrium",
      longText:
          """   Chemical equilibrium occurs in reversible reactions when the rate of the forward reaction equals the rate of the reverse reaction. The concentrations of reactants and products remain constant but not necessarily equal.
    The equilibrium constant, K, indicates the extent of the reaction:
    A large K (K > 1) means products dominate at equilibrium.
    A small K (K < 1) means reactants dominate.
    Changes in conditions, such as temperature or pressure, can shift the equilibrium position according to Le Chatelier's Principle.
""",
      questions: [
        {
          'question':
              '1. At equilibrium, the concentrations of reactants and products are always equal.',
          'options': [
            'A) True',
            'B) False',
          ],
          'correctAnswer': 'B) False',
        },
        {
          'question':
              '2. If K > 1, the reaction favors the formation of products.',
          'options': [
            'A) True',
            'B) False',
          ],
          'correctAnswer': 'A) True',
        },
        {
          'question':
              '3. Le Chatelier’s Principle predicts how equilibrium shifts with changes in conditions.',
          'options': [
            'A) True',
            'B) False',
          ],
          'correctAnswer': 'A) True',
        },
        {
          'question':
              '4. Adding a catalyst changes the equilibrium constant (K).',
          'options': [
            'A) True',
            'B) False',
          ],
          'correctAnswer': 'B) False',
        },
        {
          'question':
              '5. A small equilibrium constant (K < 1) favors reactants',
          'options': [
            'A) True',
            'B) False',
          ],
          'correctAnswer': 'A) True',
        },
      ],
    );
  }
}
