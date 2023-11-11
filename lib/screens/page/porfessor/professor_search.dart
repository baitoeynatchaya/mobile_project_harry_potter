
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter/screens/page/hogwarts.dart';
import 'package:harry_potter/screens/page/porfessor/professor_character.dart';

class ProfessorSearch extends StatefulWidget {
  const ProfessorSearch({super.key});

  @override
  State<ProfessorSearch> createState() => _ProfessorSearchState();
}

class _ProfessorSearchState extends State<ProfessorSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/page.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Text(
                        'Professor Board',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 85.0,
                            color: Colors.white,
                            fontFamily: 'HarryPotter'),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => ProfessorCharacter(),
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 250,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 3.0,
                                          ),
                                          shape: BoxShape.rectangle),
                                      child: Expanded(
                                        child: Image.asset('assets/image/G.jpg',
                                            fit: BoxFit.cover,
                                            height: 250,
                                            width: 250),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0.5),
                                      child: Text(
                                        'harry ',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.sourceSans3(
                                          color: Colors.white,
                                          fontSize: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => ProfessorCharacter(),
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 250,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 3.0,
                                          ),
                                          shape: BoxShape.rectangle),
                                      child: Expanded(
                                        child: Image.asset('assets/image/H.jpg',
                                            fit: BoxFit.cover,
                                            height: 250,
                                            width: 250),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0.5),
                                      child: Text(
                                        'harry ',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.sourceSans3(
                                          color: Colors.white,
                                          fontSize: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => ProfessorCharacter(),
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 250,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 3.0,
                                          ),
                                          shape: BoxShape.rectangle),
                                      child: Expanded(
                                        child: Image.asset('assets/image/G.jpg',
                                            fit: BoxFit.cover,
                                            height: 250,
                                            width: 250),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0.5),
                                      child: Text(
                                        'harry ',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.sourceSans3(
                                          color: Colors.white,
                                          fontSize: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProfessorCharacter(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 250,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 3.0,
                                      ),
                                      shape: BoxShape.rectangle),
                                  child: Expanded(
                                    child: Image.asset('assets/image/R.jpg',
                                        fit: BoxFit.cover,
                                        height: 250,
                                        width: 250),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.5),
                                  child: Text(
                                    'harry ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.sourceSans3(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProfessorCharacter(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 250,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 3.0,
                                      ),
                                      shape: BoxShape.rectangle),
                                  child: Expanded(
                                    child: Image.asset('assets/image/S.jpg',
                                        fit: BoxFit.cover,
                                        height: 250,
                                        width: 250),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.5),
                                  child: Text(
                                    'harry ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.sourceSans3(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProfessorCharacter(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                  height: 250,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 3.0,
                                      ),
                                      shape: BoxShape.rectangle),
                                  child: Expanded(
                                    child: Image.asset('assets/image/G.jpg',
                                        fit: BoxFit.cover,
                                        height: 250,
                                        width: 250),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.5),
                                  child: Text(
                                    'harry ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.sourceSans3(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
