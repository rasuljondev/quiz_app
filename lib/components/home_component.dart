import 'package:flutter/material.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // Centers the container on the screen
      child: Padding(
        padding: const EdgeInsets.all(10), // Padding around the container
        child: Container(
          width: 300, // Fixed width
          height: 300, // Fixed height
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(20), // Rounded corners for the container
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // Shadow effect
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(20), // Rounded corners for the image
            child: Image.asset(
              "assets/logo.jpg",
              fit: BoxFit.cover, // Ensures the image fills the container
            ),
          ),
        ),
      ),
    );
  }
}
