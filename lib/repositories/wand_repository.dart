import 'dart:convert';

import 'package:harry_potter/models/wand.dart';
import 'package:harry_potter/service/api_caller.dart';
class WandRepository{
  Future<List<Wand>> getWands() async{
    try{
      var result = await ApiCaller().get('wand');
      List list = jsonDecode(result);
      List<Wand> wandsList =
      list.map<Wand>((item) => Wand.fromJson(item)).toList();
      return wandsList;
    }catch(e){
      rethrow;
    }
  }
}