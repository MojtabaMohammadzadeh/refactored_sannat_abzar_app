class LastPrices {
  LastPrices({
      this.name, 
      this.price,});

  LastPrices.fromJson(dynamic json) {
    name = json['name'];
    price = json['price'];
  }
  String? name;
  String? price;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['price'] = price;
    return map;
  }

}