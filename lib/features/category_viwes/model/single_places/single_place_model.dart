import 'single_place.dart';
import 'slider_single_places.dart';

class SinglePlaceModel {
  SinglePlaceModel({
      required this.success,
      required this.error,
      required this.error_code,
      required this.msg,
      required this.single_place,
      required this.slider,});

  factory SinglePlaceModel.fromJson(dynamic json) {
    List < SliderSinglePlace> slider = [];
    if (json['slider'] != null) {

      json['slider'].forEach((v) {
        slider.add( SliderSinglePlace.fromJson(v));
      });
    }
    return SinglePlaceModel(
        success : json['success'],
        error : json['error'],
        error_code : json['error_code'],
        msg : json['msg'],
        single_place : json['single_place'] != null ? SinglePlace.fromJson(json['single_place']): null,
        slider: slider,
    );
  }
  int success;
  int error;
  int error_code;
  String msg;
  SinglePlace? single_place;
  List< SliderSinglePlace> slider;



}