class Professor {
  final int id;
  final String name;
  final String professor;
  final String bloodStatus;
  final String house;
  final String born;
  final String patronus;
  final String boggart;
  final String wand;
  final String image;


  Professor({
    required this.id,
    required this.name,
    required this.professor,
    required this.bloodStatus,
    required this.house,
    required this.born,
    required this.patronus,
    required this.boggart,
    required this.wand,
    required this.image
  });
  factory Professor.fromJson(Map<String,dynamic>json){
    return Professor(
      id: json['id'],
      name: json['name'],
      professor: json['professor'],
      bloodStatus: json['bloodStatus'],
      house: json['house'],
      born: json['born'],
      patronus: json['patronus'],
      boggart: json['boggart'],
      wand: json['wand'],
      image: json['image'],
    );
  }
}