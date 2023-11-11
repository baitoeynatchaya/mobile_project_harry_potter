import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter/screens/page/hogwarts.dart';
import 'package:harry_potter/screens/page/student/student_character.dart';

class StudentSearch extends StatefulWidget {
  const StudentSearch({super.key});

  @override
  State<StudentSearch> createState() => _StudentSearchState();
}

class _StudentSearchState extends State<StudentSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1828),
      body: Center(
        child:
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Student Board',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 95.0,
                        color: Color(0xFFA609F3),
                        fontFamily: 'HarryPotter'),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //createStudent(color: Color(0xFFA609F3), image: 'assets/image/G.jpg',page: StudentCharacter(), name: harry)
                            // InkWell(
                            //   onTap: () {
                            //     Navigator.of(context).push(
                            //       MaterialPageRoute(
                            //         builder: (context) => StudentCharacter(),
                            //       ),
                            //     );
                            //   },
                            //   child: Column(
                            //     children: [
                            //       Container(
                            //         height: 225.0,
                            //         width: 225.0,
                            //         decoration: BoxDecoration(
                            //             border: Border.all(
                            //               color: Color(0xFFA609F3),
                            //               width: 3.0,
                            //             ),
                            //             shape: BoxShape.rectangle),
                            //         child: Expanded(
                            //           child: Image.asset('assets/image/G.jpg',
                            //               fit: BoxFit.cover,
                            //             height: 225.0,
                            //             width: 225.0,),
                            //         ),
                            //       ),
                            //       Padding(
                            //         padding: const EdgeInsets.only(left: 0.5),
                            //         child: Text(
                            //           'harry ',
                            //           textAlign: TextAlign.center,
                            //           style: GoogleFonts.sourceSans3(
                            //             color: Colors.white,
                            //             fontSize: 24.0,
                            //           ),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            //createStudent(color: Color(0xFFA609F3), image: image, name: name)
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => StudentCharacter(),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 225.0,
                                    width: 225.0,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xFFA609F3),
                                          width: 3.0,
                                        ),
                                        shape: BoxShape.rectangle),
                                    child: Expanded(
                                      child: Image.asset('assets/image/H.jpg',
                                          fit: BoxFit.cover,
                                        height: 225.0,
                                        width: 225.0,),
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
                                    builder: (context) => StudentCharacter(),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 225.0,
                                    width: 225.0,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xFFA609F3),
                                          width: 3.0,
                                        ),
                                        shape: BoxShape.rectangle),
                                    child: Expanded(
                                      child: Image.asset('assets/image/G.jpg',
                                          fit: BoxFit.cover,
                                        height: 225.0,
                                        width: 225.0,),
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
                                builder: (context) => StudentCharacter(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 225.0,
                                width: 225.0,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFFA609F3),
                                      width: 3.0,
                                    ),
                                    shape: BoxShape.rectangle),
                                child: Expanded(
                                  child: Image.asset('assets/image/R.jpg',
                                      fit: BoxFit.cover,
                                    height: 225.0,
                                    width: 225.0,),
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
                                builder: (context) => StudentCharacter(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 225.0,
                                width: 225.0,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFFA609F3),
                                      width: 3.0,
                                    ),
                                    shape: BoxShape.rectangle),
                                child: Expanded(
                                  child: Image.asset('assets/image/S.jpg',
                                      fit: BoxFit.cover,
                                    height: 225.0,
                                    width: 225.0,),
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
                                builder: (context) => StudentCharacter(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 225.0,
                                width: 225.0,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFFA609F3),
                                      width: 3.0,
                                    ),
                                    shape: BoxShape.rectangle),
                                child: Expanded(
                                  child: Image.asset('assets/image/G.jpg',
                                      fit: BoxFit.cover,
                                    height: 225.0,
                                    width: 225.0,),
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
    );
  }
  Widget createStudent({
    required Color color,
    required String image,
    dynamic page,
    required String name
  }) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      child: Column(
        children: [
          Container(
            height: 225.0,
            width: 225.0,
            decoration: BoxDecoration(
                border: Border.all(
                  color: color,
                  width: 3.0,
                ),
                shape: BoxShape.rectangle),
            child: Expanded(
              child: Image.asset(image,
                fit: BoxFit.cover,
                height: 225.0,
                width: 225.0,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.5),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: GoogleFonts.sourceSans3(
                color: Colors.white,
                fontSize: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
