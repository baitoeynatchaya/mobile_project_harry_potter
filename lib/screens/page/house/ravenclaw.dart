import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ravenclaw extends StatefulWidget {
  const Ravenclaw({super.key});

  @override
  State<Ravenclaw> createState() => _RavenclawState();
}

class _RavenclawState extends State<Ravenclaw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C255D),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Center(
              child: Text(
                'Ravenclaw',
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
              child: Image.asset('assets/image/R.jpg',
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
