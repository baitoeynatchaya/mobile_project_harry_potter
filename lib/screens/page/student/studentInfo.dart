
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/student.dart';

class StudentInfo extends StatefulWidget {
  final Student student;
  const StudentInfo({super.key, required this.student});

  @override
  State<StudentInfo> createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {
  Student? student;

  void initState() {
    super.initState();
    student = widget.student;
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
                student!.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 85.0,
                    color: Color(0xFFA609F3),
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
            child: Image.network(student!.image,
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
                        'Student Information',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.sourceSans3(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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
                            'Name :  ${student!.name}',
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
                            'Blood Status :  ${student!.bloodStatus}',
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
                            'House :  ${student!.house}',
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
                            child: Icon(Icons.bathtub,
                              color:Colors.white,),
                          ),
                          Text(
                            'Born :  ${student!.born}',
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
                            child: Icon(Icons.spatial_audio,
                              color:Colors.white,),
                          ),
                          Text(
                            'Also Known As :  ${student!.alsoKnownAss}',
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
                            'Patronus :  ${student!.patronus}',
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
                            'Boggart :  ${student!.boggart}',
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
                            'Wand :  ${student!.wand}',
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
