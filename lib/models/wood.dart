class Wood{
  final String wood;

  Wood({
    required this.wood,
  });
  factory Wood.fromJson(Map<String,dynamic>json){
    return Wood(
        wood: json['wood']
    );
  }
}