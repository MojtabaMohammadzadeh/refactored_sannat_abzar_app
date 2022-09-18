import 'sub_places_category.dart';

class SubCategoryModel {
  SubCategoryModel({
      required this.success,
      required this.error,
      required this.error_code,
      required this.msg,
      required this.parentName,
      required this.subplacescategory,});

  factory SubCategoryModel.fromJson(dynamic json) {
    List<SubPlacescategory>subplacescategory = [];
    if (json['placescategory'] != null) {

      json['placescategory'].forEach((v) {
        subplacescategory.add(SubPlacescategory.fromJson(v));
      });
    }
    return SubCategoryModel(
        success : json['success'],
        error : json['error'],
        error_code : json['error_code'],
        msg : json['msg'],
        parentName : json['parent_name'],
        subplacescategory : subplacescategory,
    );
  }
  int success;
  int error;
  int error_code;
  String msg;
  String parentName;
  List<SubPlacescategory> subplacescategory;


}