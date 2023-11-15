import 'dart:convert';

import 'package:harry_potter/models/house.dart';
import 'package:harry_potter/service/api_caller.dart';

class HouseRepository{
  Future<List<House>> getHouses() async{
    try{
      var result = await ApiCaller().get('house');
      List list = jsonDecode(result);
      List<House> housesList =
        list.map<House>((item) => House.fromJson(item)).toList();
      return housesList;
    }catch(e){
      rethrow;
  }
  }
}