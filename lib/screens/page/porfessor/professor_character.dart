
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter/models/professor.dart';

class ProfessorCharacter extends StatefulWidget {
  final Professor professor;
  const ProfessorCharacter({super.key, required this.professor});

  @override
  State<ProfessorCharacter> createState() => _ProfessorCharacterState();
}

class _ProfessorCharacterState extends State<ProfessorCharacter> {
  Professor? professor;

  void initState() {
    super.initState();
    professor = widget.professor;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1828),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Center(
              child: Text(
                  professor!.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 85.0,
                    color: Color(0xFFA609F3) ,
                    fontFamily: 'HarryPotter'),
              ),
            ),
          ),
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFA609F3),
                  width: 3.0,
                ),
                shape: BoxShape.rectangle),
            child: Image.network(professor!.image,
                fit: BoxFit.cover, height: 250, width: 250),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Center(
                child: Container(
                  width: 550.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFA609F3),
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      shape: BoxShape.rectangle),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Professor Information',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sourceSans3(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0,right:15.0 ),
                            child: Icon(Icons.near_me,
                              color:Colors.white,),
                          ),
                          Text(
                            'Name :  ${professor!.name}',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sourceSans3(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0,right:15.0 ),
                            child: Icon(Icons.school,
                              color:Colors.white,),
                          ),
                            Text('Professor:  ${professor!.professor}',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sourceSans3(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0,right:15.0 ),
                            child: Icon(Icons.bloodtype,
                              color:Colors.white,),
                          ),
                          Text(
                            'Blood Status :  ${professor!.bloodStatus}',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sourceSans3(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0,right:15.0 ),
                            child: Icon(Icons.stadium_rounded,
                              color:Colors.white,),
                          ),
                          Text(
                            'House :  ${professor!.house}',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sourceSans3(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0,right:15.0 ),
                            child: Icon(Icons.bathtub,
                              color:Colors.white,),
                          ),
                          Text(
                            'Born :  ${professor!.born}',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sourceSans3(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0,right:15.0 ),
                            child: Icon(Icons.favorite_border,
                              color:Colors.white,),
                          ),
                          Text(
                            'Patronus :  ${professor!.patronus}',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sourceSans3(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0,right:15.0 ),
                            child: Icon(Icons.gpp_bad_rounded,
                              color:Colors.white,),
                          ),
                          Text(
                            'Boggart :  ${professor!.boggart}',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sourceSans3(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0,right:15.0 ),
                            child: Icon(Icons.stacked_line_chart,
                              color:Colors.white,),
                          ),
                          Text(
                            'Wand :  ${professor!.wand}',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sourceSans3(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ],
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
