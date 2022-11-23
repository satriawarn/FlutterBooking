class Onboarding {
  Onboarding({
      String? image, 
      String? title, 
      String? description,}){
    _image = image;
    _title = title;
    _description = description;
}

  Onboarding.fromJson(dynamic json) {
    _image = json['image'];
    _title = json['title'];
    _description = json['description'];
  }
  String? _image;
  String? _title;
  String? _description;
Onboarding copyWith({  String? image,
  String? title,
  String? description,
}) => Onboarding(  image: image ?? _image,
  title: title ?? _title,
  description: description ?? _description,
);
  String? get image => _image;
  String? get title => _title;
  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image'] = _image;
    map['title'] = _title;
    map['description'] = _description;
    return map;
  }

}