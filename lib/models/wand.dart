class Wand {
  final String core;
  final String woods;
  final String length;
  final String image;

  Wand({
    required this.core,
    required this.woods,
    required this.length,
    required this.image
  });
  factory Wand.fromJson(Map<String,dynamic>json){
    return Wand(
      core: json['core'],
      woods: json['wood'],
      length: json['length'],
      image: json['image'],

    );
  }
}