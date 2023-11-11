
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter/screens/page/wand_woods/wand_character.dart';

class WandWoodsSearch extends StatefulWidget {
  const WandWoodsSearch({super.key});

  @override
  State<WandWoodsSearch> createState() => _WandWoodsSearchState();
}

class _WandWoodsSearchState extends State<WandWoodsSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1828),
      body: Column(
        children: [
          Expanded(
            // child: Container(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage('assets/image/page.jpg'),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                      'Wand Wood ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 95.0,
                          color: Color(0xFFA609F3),
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
                                    builder: (context) => WandWoodCharacter(),
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
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => WandWoodCharacter(),
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
                                    builder: (context) => WandWoodCharacter(),
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
                                builder: (context) => WandWoodCharacter(),
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
                                builder: (context) => WandWoodCharacter(),
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
                                builder: (context) => WandWoodCharacter(),
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
          //),
        ],
      ),
    );
  }
}
