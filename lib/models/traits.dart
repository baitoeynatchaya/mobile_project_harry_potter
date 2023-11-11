class Traits{
  final String traits;

  Traits({
    required this.traits,
  });
  factory Traits.fromJson(Map<String,dynamic>json){
    return Traits(
        traits: json['traits']
    );
  }
}