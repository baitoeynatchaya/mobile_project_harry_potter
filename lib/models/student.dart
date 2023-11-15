
class Student {
  final int id;
  final String name;
  final String bloodStatus;
  final String house;
  final String born;
  final List<String> alsoKnownAss;
  final String patronus;
  final String boggart;
  final String wand;
  final String image;

  Student({
    required this.id,
    required this.name,
    required this.bloodStatus,
    required this.house,
    required this.born,
    required this.alsoKnownAss,
    required this.patronus,
    required this.boggart,
    required this.wand,
    required this.image
  });
  factory Student.fromJson(Map<String,dynamic>json){
    List<String> alsoKnownAss = [];
    for (var alsoKnownAs in json['alsoKnownAs']) {
      alsoKnownAss.add(alsoKnownAs);
    }
    return Student(
      id: json['id'],
      name: json['name'],
      bloodStatus: json['bloodStatus'],
      house: json['house'],
      born: json['born'],
      alsoKnownAss: alsoKnownAss,
      patronus: json['patronus'],
      boggart: json['boggart'],
      wand: json['wand'],
      image: json['image'],
    );
  }
}