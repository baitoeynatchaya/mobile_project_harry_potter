import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter/models/student.dart';
import 'package:harry_potter/screens/page/student/studentInfo.dart';
import '../../../repositories/student_repository.dart';

class StudentSearch extends StatefulWidget {
  const StudentSearch({super.key});

  @override
  State<StudentSearch> createState() => _StudentSearchState();
}

class _StudentSearchState extends State<StudentSearch> {
  List<Student>? _students;
  var _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    getStudents();
  }

  getStudents() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });
    await Future.delayed(Duration(seconds: 2));
    try {
      var students = await StudentRepository().getStudents();
      setState(() {
        _students = students;
        debugPrint('Number of items: ${students.length}');
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
    buildSuccess() => Center(
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    createStudent(
                        color: Color(0xFFA609F3),
                        image: _students![0].image,
                        page: StudentInfo(student: _students![0]),
                        name: _students![0].name),
                    createStudent(
                        color: Color(0xFFA609F3),
                        image: _students![1].image,
                        page: StudentInfo(student: _students![1]),
                        name: _students![1].name),
                    createStudent(
                        color: Color(0xFFA609F3),
                        image: _students![2].image,
                        page: StudentInfo(student: _students![2]),
                        name: _students![2].name),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    createStudent(
                        color: Color(0xFFA609F3),
                        image: _students![3].image,
                        page: StudentInfo(student: _students![3]),
                        name: _students![3].name),
                    createStudent(
                        color: Color(0xFFA609F3),
                        image: _students![4].image,
                        page: StudentInfo(student: _students![4]),
                        name: _students![4].name),
                    createStudent(
                        color: Color(0xFFA609F3),
                        image: _students![5].image,
                        page: StudentInfo(student: _students![5]),
                        name: _students![5].name),
                  ],
                ),
              ),
            ],
          ),
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
              ElevatedButton(onPressed: getStudents, child: Text('Retry'))
            ]),
          ),
        );

    return Scaffold(
      backgroundColor: Color(0xFF1B1828),
      body: Stack(
        children: [
          if (_students?.isNotEmpty ?? false) buildSuccess(),
          if (_errorMessage != null) buildError(),
          if (_isLoading) buildLoadingOverlay()
        ],
      ),
    );
  }

  Widget createStudent(
      {required Color color,
      required String image,
      dynamic page,
      required String name}) {
    return Column(
      children: [
        InkWell(
          onTap: (){
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
