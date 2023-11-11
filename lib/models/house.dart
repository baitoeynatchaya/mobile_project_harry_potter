import 'package:harry_potter/models/traits.dart';

class House {
  final int id;
  final String name;
  final String founder;
  final String animal;
  final String houseColor;
  final String element;
  final List<Traits> traitss;
  final String head;
  final String ghost;
  final String commonRoom;
  final String magicalObjects;

  House({
    required this.id,
    required this.name,
    required this.founder,
    required this.animal,
    required this.houseColor,
    required this.element,
    required this.traitss,
    required this.head,
    required this.ghost,
    required this.commonRoom,
    required this.magicalObjects
  });
  factory House.fromJson(Map<String,dynamic>json){
    List<Traits> traitss = [];
    for (var traits in json['traitss']) {
      traitss.add(Traits.fromJson(traits));
    }
    return House(
      id: json['id'],
      name: json['name'],
      founder: json['founder'],
      animal: json['animal'],
      houseColor: json['houseColor'],
      element: json['element'],
      traitss: traitss,
      head: json['head'],
      ghost: json['ghost'],
      commonRoom: json['commonRoom'],
      magicalObjects: json['magicalObjects'],
    );
  }
}