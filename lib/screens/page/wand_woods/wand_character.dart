
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/wand.dart';

class WandWoodCharacter extends StatefulWidget {
  final Wand wand;
  const WandWoodCharacter({super.key, required this.wand});

  @override
  State<WandWoodCharacter> createState() => _WandWoodCharacterState();
}

class _WandWoodCharacterState extends State<WandWoodCharacter> {
  Wand? wand;
  void initState() {
    super.initState();
    wand = widget.wand;
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
                wand!.core,
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
            child: Image.network(wand!.image,
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
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0,right:15.0 ),
                            child: Icon(Icons.bolt_outlined,
                              color:Colors.white,),
                          ),
                          Text(
                            'Wand Information',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sourceSans3(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0,right:15.0 ),
                            child: Icon(Icons.favorite_border,
                              color:Colors.white,),
                          ),
                          Text(
                            'Core :  ${wand!.core}',
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
                            child: Icon(Icons.nat,
                              color:Colors.white,),
                          ),
                          Text(
                            'Wood:  ${wand!.woods}',
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
                            child: Icon(Icons.leaderboard,
                              color:Colors.white,),
                          ),
                          Text(
                            'Length :  ${wand!.length}',
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
