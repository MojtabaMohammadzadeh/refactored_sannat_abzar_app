class Sliders1 {
  Sliders1({
      this.id, 
      this.name, 
      this.type, 
      this.img, 
      this.value, 
      this.action_type,
      this.location, 
      this.category_brand_id,
      this.id_value,});

  Sliders1.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    img = json['img'];
    value = json['value'];
    action_type = json['action_type'];
    location = json['location'];
    category_brand_id = json['category_brand_id'];
    id_value = json['id_value'];
  }
  int? id;
  String? name;
  String? type;
  String? img;
  String? value;
  String? action_type;
  String? location;
  int? category_brand_id;
  int? id_value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['type'] = type;
    map['img'] = img;
    map['value'] = value;
    map['action_type'] = action_type;
    map['location'] = location;
    map['category_brand_id'] = category_brand_id;
    map['id_value'] = id_value;
    return map;
  }

}