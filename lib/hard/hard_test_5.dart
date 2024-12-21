import 'package:chemistry_through_english/hard/reusable_hard_test.dart';
import 'package:flutter/material.dart';

class HardTests5 extends StatelessWidget {
  const HardTests5({super.key});

  @override
  Widget build(BuildContext context) {
    return const ReusableHardTests(
      pageTitle: "Test 5",
      textTitle: "Acids and Bases",
      longText:
          """   Acids and bases are two important categories of chemicals. Acids are substances that release hydrogen ions (H⁺) when dissolved in water, giving the solution a pH less than 7. Examples of acids include hydrochloric acid (HCl) and sulfuric acid (H₂SO₄). Bases, on the other hand, release hydroxide ions (OH⁻) in water, resulting in a pH greater than 7. Common bases include sodium hydroxide (NaOH) and ammonia (NH₃).
    The strength of an acid or base depends on how completely it dissociates in water. Strong acids and bases dissociate fully, while weak acids and bases only partially dissociate. Acids and bases can neutralize each other, forming water and a salt in the process. This reaction is called neutralization.
""",
      questions: [
        {
          'question': '1. What is a defining characteristic of acids?',
          'options': [
            'A. They release hydroxide ions (OH⁻).',
            'B. They have a pH greater than 7.',
            'C. They release hydrogen ions (H⁺).',
            'D. They do not dissociate in water.',
          ],
          'correctAnswer': 'C. They release hydrogen ions (H⁺).',
        },
        {
          'question': '2. Which of the following is a common base?',
          'options': [
            'A. Hydrochloric acid (HCl)',
            'B. Ammonia (NH₃)',
            'C. Sulfuric acid (H₂SO₄)',
            'D. Carbon dioxide (CO₂)',
          ],
          'correctAnswer': 'B. Ammonia (NH₃)',
        },
        {
          'question': '3. What is the pH of a strong base?',
          'options': [
            'A. Less than 7',
            'B. Exactly 7',
            'C. Greater than 7',
            'D. 0',
          ],
          'correctAnswer': 'C. Greater than 7',
        },
        {
          'question':
              '4. What happens when an acid and a base neutralize each other?',
          'options': [
            'A. A gas is formed.',
            'B. Water and a salt are formed.',
            'C. The solution becomes acidic.',
            'D. The solution becomes basic.',
          ],
          'correctAnswer': 'B. Water and a salt are formed.',
        },
        {
          'question': '5. How do weak acids differ from strong acids?',
          'options': [
            'A. They fully dissociate in water.',
            'B. They partially dissociate in water.',
            'C. They have a pH above 7.',
            'D. They release hydroxide ions.',
          ],
          'correctAnswer': 'B. They partially dissociate in water.',
        },
      ],
    );
  }
}
