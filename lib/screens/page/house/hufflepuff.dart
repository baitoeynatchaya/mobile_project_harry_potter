import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hufflepuff extends StatefulWidget {
  const Hufflepuff({super.key});

  @override
  State<Hufflepuff> createState() => _HufflepuffState();
}

class _HufflepuffState extends State<Hufflepuff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB4A008),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Center(
              child: Text(
                'Hufflepuff',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 85.0,
                    color: Colors.white,
                    fontFamily: 'HarryPotter'),
              ),
            ),
          ),
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white24,
                  width: 3.0,
                ),
                shape: BoxShape.rectangle),
            child: Expanded(
              child: Image.asset('assets/image/H.jpg',
                  fit: BoxFit.cover, height: 250, width: 250),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Center(
              child: Container(
                width: 650.0,
                height: 300.0,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFA609F3),
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.rectangle),
                child: Text(
                  'House information',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sourceSans3(
                    color: Colors.white,
                    fontSize: 26.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
