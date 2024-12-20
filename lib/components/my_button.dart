import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromRGBO(41, 36, 59, 1),
        backgroundColor:
            const Color.fromRGBO(58, 255, 210, 1), // Button background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Rounded corners
        ),
        elevation: 5,
        shadowColor: Colors.white, // Shadow for 3D effect
        padding:
            const EdgeInsets.symmetric(horizontal: 32, vertical: 16), // Padding
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18, // Text size
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
