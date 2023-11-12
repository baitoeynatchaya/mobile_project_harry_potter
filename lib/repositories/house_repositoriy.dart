import 'dart:convert';

import 'package:harry_potter/models/house.dart';
import 'package:harry_potter/service/house_api.dart';

class HouseRepository{
  Future<List<House>> getHouses() async{
    try{
      var result = await HouseApi().get('house');
      List list = jsonDecode(result);
      List<House> housesList =
        list.map<House>((item) => House.fromJson(item)).toList();
      return housesList;
    }catch(e){
      rethrow;
  }
  }
}