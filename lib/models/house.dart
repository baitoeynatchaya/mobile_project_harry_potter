class House {
  final int id;
  final String name;
  final String founder;
  final String animal;
  final String houseColor;
  final String element;
  final List<String> traits;
  final String head;
  final String ghost;
  final String commonRoom;
  final String magicalObjects;
  final String image;
  House({
    required this.id,
    required this.image,
    required this.name,
    required this.founder,
    required this.animal,
    required this.houseColor,
    required this.element,
    required this.traits,
    required this.head,
    required this.ghost,
    required this.commonRoom,
    required this.magicalObjects
  });
  factory House.fromJson(Map<String,dynamic>json){
    List<String> traits = [];
    for (var trait in json['traits']) {
      traits.add(trait);
    }
    return House(
      id: json['id'],
      name: json['name'],
      founder: json['founder'],
      animal: json['animal'],
      houseColor: json['houseColor'],
      element: json['element'],
      traits: traits,
      head: json['head'],
      ghost: json['ghost'],
      commonRoom: json['commonRoom'],
      image: json['image'],
      magicalObjects: json['magicalObjects'],
    );
  }
}