import 'dart:convert';

import 'package:harry_potter/service/api_caller.dart';

import '../models/student.dart';

class StudentRepository{
  Future<List<Student>> getStudents() async{
    try{
      var result = await ApiCaller().get('student');
      List list = jsonDecode(result);
      List<Student> studentsList =
      list.map<Student>((item) => Student.fromJson(item)).toList();
      return studentsList;
    }catch(e){
      rethrow;
    }
  }
}