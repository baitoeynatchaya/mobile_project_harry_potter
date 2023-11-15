import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter/screens/page/house/house_page.dart';
import 'package:harry_potter/screens/page/porfessor/professor_search.dart';
import 'package:harry_potter/screens/page/student/student_search.dart';
import 'package:harry_potter/screens/page/wand_woods/wand_search.dart';

class Hogwarts extends StatefulWidget {
  const Hogwarts({super.key});

  @override
  State<Hogwarts> createState() => _HogwartsState();
}

class _HogwartsState extends State<Hogwarts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1828),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20.0),
            child: SizedBox(
              width: 40.0,
              height: 40.0,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Color(0xFFA609F3),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    'Hogwarts',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 95.0,
                        color: Color(0xFFA609F3),
                        fontFamily: 'HarryPotter'),
                  ),
                ),
                createTang(
                    name: 'House',
                    color: Color(0xFF500B17),
                    icon: Icon(
                      Icons.house,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    page: HousePage()),
                createTang(
                    name: 'Student',
                    color: Color(0xFFCCBD4E),
                    icon: Icon(
                      Icons.border_color_outlined,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    page: StudentSearch()),
                createTang(
                    name: 'Professor',
                    color: Color(0xFF1C255D),
                    icon: Icon(
                      Icons.people_rounded,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    page: ProfessorSearch()),
                createTang(
                    name: 'Wand Woods',
                    color: Color(0xFF0A2601),
                    icon: Icon(
                      Icons.bolt_outlined,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    page: WandWoodsSearch()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget createTang(
      {required String name,
      required Color color,
      required Icon icon,
      dynamic page}) {
    return Padding(
      padding: const EdgeInsets.only(top: 45.0),
      child: SizedBox(
        width: 400.0,
        height: 70.0,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => page,
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          child: Row(
            children: [
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white24,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                  shape: BoxShape.rectangle,
                ),
                child: icon,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sourceSans3(
                    color: Colors.white,
                    fontSize: 26.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
