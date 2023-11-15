import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter/repositories/professor_repository.dart';
import 'package:harry_potter/screens/page/porfessor/professor_character.dart';

import '../../../models/professor.dart';

class ProfessorSearch extends StatefulWidget {
  const ProfessorSearch({super.key});

  @override
  State<ProfessorSearch> createState() => _ProfessorSearchState();
}

class _ProfessorSearchState extends State<ProfessorSearch> {
  List<Professor>? _professors;
  var _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    getProfessors();
  }

  getProfessors() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });
    await Future.delayed(Duration(seconds: 2));
    try {
      var professors = await ProfessorRepository().getProfessors();
      setState(() {
        _professors = professors;
        debugPrint('Number of items: ${professors.length}');
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
    } finally {
      _isLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    buildSuccess() => Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                'Professor Board',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 85.0,
                    color: Color(0xFFA609F3),
                    fontFamily: 'HarryPotter'),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createProfessor(
                      color: Color(0xFFA609F3),
                      image: _professors![0].image,
                      page: ProfessorCharacter(
                        professor: _professors![0],
                      ),
                      name: _professors![0].name),
                  createProfessor(
                      color: Color(0xFFA609F3),
                      image: _professors![1].image,
                      page: ProfessorCharacter(
                        professor: _professors![1],
                      ),
                      name: _professors![1].name),
                  createProfessor(
                      color: Color(0xFFA609F3),
                      image: _professors![2].image,
                      page: ProfessorCharacter(
                        professor: _professors![2],
                      ),
                      name: _professors![2].name),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createProfessor(
                      color: Color(0xFFA609F3),
                      image: _professors![3].image,
                      page: ProfessorCharacter(
                        professor: _professors![3],
                      ),
                      name: _professors![3].name),
                  createProfessor(
                      color: Color(0xFFA609F3),
                      image: _professors![4].image,
                      page: ProfessorCharacter(
                        professor: _professors![4],
                      ),
                      name: _professors![4].name),
                  createProfessor(
                      color: Color(0xFFA609F3),
                      image: _professors![5].image,
                      page: ProfessorCharacter(
                        professor: _professors![5],
                      ),
                      name: _professors![5].name),
                ],
              ),
            ),
          ],
        );

    buildLoadingOverlay() => Container(
          color: Colors.black.withOpacity(0.2),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );

    buildError() => Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(_errorMessage ?? '', textAlign: TextAlign.center),
              SizedBox(height: 32.0),
              ElevatedButton(onPressed: getProfessors, child: Text('Retry'))
            ]),
          ),
        );

    return Scaffold(
      backgroundColor: Color(0xFF1B1828),
      body: Stack(
        children: [
          if (_professors?.isNotEmpty ?? false) buildSuccess(),
          if (_errorMessage != null) buildError(),
          if (_isLoading) buildLoadingOverlay()
        ],
      ),
    );
  }

  Widget createProfessor(
      {required Color color,
      required String image,
      dynamic page,
      required String name}) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => page,
              ),
            );
          },
          child: Container(
            height: 225.0,
            width: 225.0,
            decoration: BoxDecoration(
                border: Border.all(
                  color: color,
                  width: 3.0,
                ),
                shape: BoxShape.rectangle),
            child: Image.network(
              image,
              fit: BoxFit.cover,
              height: 225.0,
              width: 225.0,
            ),
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
    );
  }
}
