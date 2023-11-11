import 'package:harry_potter/models/wood.dart';

class Wand {
  final String core;
  final List<Wood> woods;
  final String length;
  final String image;

  Wand({
    required this.core,
    required this.woods,
    required this.length,
    required this.image
  });
  factory Wand.fromJson(Map<String,dynamic>json){
    List<Wood> woods = [];
    for (var wood in json['woods']) {
      woods.add(Wood.fromJson(wood));
    }
    return Wand(
      core: json['core'],
      woods: woods,
      length: json['length'],
      image: json['image'],

    );
  }
}