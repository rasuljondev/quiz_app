import 'package:chemistry_through_english/hard/reusable_hard_test.dart';
import 'package:flutter/material.dart';

class HardTests4 extends StatelessWidget {
  const HardTests4({super.key});

  @override
  Widget build(BuildContext context) {
    return const ReusableHardTests(
      pageTitle: "Test 4",
      textTitle: "The Periodic Table",
      longText:
          """The periodic table is a systematic arrangement of elements based on their atomic number, electron configuration, and recurring chemical properties. Dmitri Mendeleev developed the first periodic table, which has since evolved into its modern form.
Elements are arranged in rows called periods and columns called groups. Elements in the same group share similar properties due to their valence electrons. For example, Group 1 elements, also known as alkali metals, are highly reactive and include lithium (Li), sodium (Na), and potassium (K).
Metals, nonmetals, and metalloids are found in different regions of the periodic table. Metals, located on the left and center, are typically shiny, good conductors of heat and electricity, and malleable. Nonmetals, found on the right, are poor conductors and often brittle. Metalloids, which exhibit properties of both metals and nonmetals, are located along the "stair-step" line.
""",
      questions: [
        {
          'question':
              '1. What is the primary basis for the arrangement of elements in the periodic table?',
          'options': [
            'A. Mass number',
            'B. Atomic number',
            'C. Reactivity',
            'D. Density',
          ],
          'correctAnswer': 'B. Atomic number',
        },
        {
          'question': '2. What are rows in the periodic table called?',
          'options': [
            'A. Groups',
            'B. Periods',
            'C. Families',
            'D. Series',
          ],
          'correctAnswer': 'B. Periods',
        },
        {
          'question': '3. What do elements in the same group have in common?',
          'options': [
            'A. The same atomic mass',
            'B. The same number of valence electrons',
            'C. The same state of matter',
            'D. The same melting point',
          ],
          'correctAnswer': 'B. The same number of valence electrons',
        },
        {
          'question': '4. Which group contains highly reactive metals?',
          'options': [
            'A. Group 1 (Alkali metals)',
            'B. Group 2 (Alkaline earth metals)',
            'C. Group 17 (Halogens)',
            'D. Group 18 (Noble gases)',
          ],
          'correctAnswer': 'A. Group 1 (Alkali metals)',
        },
        {
          'question':
              '5. Where are nonmetals typically located on the periodic table?',
          'options': [
            'A. On the left side',
            'B. In the center',
            'C. On the right side',
            'D. Along the "stair-step" line',
          ],
          'correctAnswer': 'C. On the right side',
        },
      ],
    );
  }
}
