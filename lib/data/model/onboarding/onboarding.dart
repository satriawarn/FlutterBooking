/// image : "imagenya"
/// title : "titlenya"
/// decription : "descriptionnya"

class Onboarding {
  Onboarding({
      String? image, 
      String? title, 
      String? decription,}){
    _image = image;
    _title = title;
    _decription = decription;
}

  Onboarding.fromJson(dynamic json) {
    _image = json['image'];
    _title = json['title'];
    _decription = json['decription'];
  }
  String? _image;
  String? _title;
  String? _decription;
Onboarding copyWith({  String? image,
  String? title,
  String? decription,
}) => Onboarding(  image: image ?? _image,
  title: title ?? _title,
  decription: decription ?? _decription,
);
  String? get image => _image;
  String? get title => _title;
  String? get decription => _decription;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image'] = _image;
    map['title'] = _title;
    map['decription'] = _decription;
    return map;
  }

}