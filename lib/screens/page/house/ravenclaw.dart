import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/house.dart';

class Ravenclaw extends StatefulWidget {
  final House house;
  const Ravenclaw({super.key, required this.house});

  @override
  State<Ravenclaw> createState() => _RavenclawState();
}

class _RavenclawState extends State<Ravenclaw> {
  House? house;
  void initState() {
    super.initState();
    house = widget.house;
  }

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
                '${house!.name}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 85.0,
                    color: Color(0xFFCD7F32),
                    fontFamily: 'HarryPotter'),
              ),
            ),
          ),
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFCD7F32),
                  width: 3.0,
                ),
                shape: BoxShape.rectangle),
            child: Image.network(house!.image,
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
                        color: Color(0xFFCD7F32),
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      shape: BoxShape.rectangle),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'House information',
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
                              child: Icon(Icons.school,
                                color:Colors.white,),
                            ),
                            Text(
                              'Founder :  ${house!.founder}',
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
                              child: Icon(Icons.pets,
                                color:Colors.white,),
                            ),
                            Text(
                              'Animal :  ${house!.animal}',
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
                              child: Icon(Icons.color_lens,
                                color:Colors.white,),
                            ),
                            Text(
                              'House Color :  ${house!.houseColor}',
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
                              child: Icon(Icons.wb_cloudy_outlined,
                                color:Colors.white,),
                            ),
                            Text(
                              'Element :  ${house!.element}',
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
                              child: Icon(Icons.recommend,
                                color:Colors.white,),
                            ),
                            Text(
                              'Traits :  ${house!.traits}',
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
                              child: Icon(Icons.handshake_rounded,
                                color:Colors.white,),
                            ),
                            Text(
                              'Head :  ${house!.head}',
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
                              child: Icon(Icons.gpp_maybe,
                                color:Colors.white,),
                            ),
                            Text(
                              'Ghost :  ${house!.ghost}',
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
                              child: Icon(Icons.location_on,
                                color:Colors.white,),
                            ),
                            Text(
                              'Common Room :  ${house!.commonRoom}',
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
                              child: Icon(Icons.dark_mode_outlined,
                                color:Colors.white,),
                            ),
                            Text(
                              'Magical Objects :  ${house!.magicalObjects}',
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
