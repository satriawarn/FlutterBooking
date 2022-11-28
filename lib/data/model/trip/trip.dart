class Trip {
  Trip({
    this.id,
    this.name,
    this.location,
    this.price,
    this.avatar,
    this.locationAvatar,
    this.detail,
    this.days,
    this.tags,
  });

  Trip.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    location = json['location'];
    price = json['price'];
    avatar = json['avatar'];
    locationAvatar = json['locationAvatar'];
    detail = json['detail'];
    days = json['days'];
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(Tags.fromJson(v));
      });
    }
  }

  int? id;
  String? name;
  String? location;
  int? price;
  String? avatar;
  String? locationAvatar;
  String? detail;
  int? days;
  List<Tags>? tags;

  Trip copyWith({
    int? id,
    String? name,
    String? location,
    int? price,
    String? avatar,
    String? locationAvatar,
    String? detail,
    int? days,
    List<Tags>? tags,
  }) =>
      Trip(
        id: id ?? this.id,
        name: name ?? this.name,
        location: location ?? this.location,
        price: price ?? this.price,
        avatar: avatar ?? this.avatar,
        locationAvatar: locationAvatar ?? this.locationAvatar,
        detail: detail ?? this.detail,
        days: days ?? this.days,
        tags: tags ?? this.tags,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['location'] = location;
    map['price'] = price;
    map['avatar'] = avatar;
    map['locationAvatar'] = locationAvatar;
    map['detail'] = detail;
    map['days'] = days;
    if (tags != null) {
      map['tags'] = tags?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Tags {
  Tags({
    this.id,
    this.name,
  });

  Tags.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }

  int? id;
  String? name;

  Tags copyWith({
    int? id,
    String? name,
  }) =>
      Tags(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }
}
