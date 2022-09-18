import 'places.dart';

class SubPlacescategory {
  SubPlacescategory({
      this.id, 
      this.title, 
      this.img, 
      this.places,});

  SubPlacescategory.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    img = json['img'];
    if (json['places'] != null) {
      places = [];
      json['places'].forEach((v) {
        places?.add(Places.fromJson(v));
      });
    }
  }
  int? id;
  String? title;
  String? img;
  List<Places>? places;



}