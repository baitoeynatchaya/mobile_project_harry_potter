class Wand {
  final String core;
  final List<String> woods;
  final List<String> length;
  final String image;

  Wand({
    required this.core,
    required this.woods,
    required this.length,
    required this.image
  });
  factory Wand.fromJson(Map<String,dynamic>json){
    List<String> woods = [];
    for (var wood in json['wood']) {
      woods.add(wood);
    }
    List<String> lengths = [];
    for (var length in json['length']) {
      lengths.add(length);
    }

    return Wand(
      core: json['core'],
      woods: woods,
      length: lengths,
      image: json['image'],

    );
  }
}