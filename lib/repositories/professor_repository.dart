import 'dart:convert';

import 'package:harry_potter/models/professor.dart';
import 'package:harry_potter/service/api_caller.dart';

class ProfessorRepository{
  Future<List<Professor>> getProfessors() async{
    try{
      var result = await ApiCaller().get('professor');
      List list = jsonDecode(result);
      List<Professor> professorsList =
      list.map<Professor>((item) => Professor.fromJson(item)).toList();
      return professorsList;
    }catch(e){
      rethrow;
    }
  }
}