class AlsoKnownAs{
  final String alsoKnownAs;

  AlsoKnownAs({
    required this.alsoKnownAs,
  });
  factory AlsoKnownAs.fromJson(Map<String,dynamic>json){
    return AlsoKnownAs(
        alsoKnownAs: json['alsoKnownAs']
    );
  }
}