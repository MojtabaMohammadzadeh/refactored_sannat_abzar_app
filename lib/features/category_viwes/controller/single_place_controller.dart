


import 'package:get/get.dart';

import '../model/single_places/single_place.dart';
import '../model/single_places/slider_single_places.dart';
import '../remote/single_place_remote.dart';

class SinglePlaceControll extends GetxController{
  var isLoading = true.obs;
  var singlePlaceControll = < SinglePlace>[];
  var singleSliderControll = < SliderSinglePlace>[];
  String titleControll = '';
  void fetchSinglePlace(String IdPlaces) async{

    isLoading(true);
    var Placeid = IdPlaces ?? '0';


    try{
      var products = await SinglePlaceRemote.fetchSinglePlace(Placeid);
      if(products != null){
        print('products waaaaaaaassssssssssss');
        // singlePlaceControll = products.single_place as List<SinglePlace>;
        titleControll = products.single_place?.title as String;
        print('thiss isssssssssss titleeeeeeeee');
        print(titleControll);
        update();

        products.slider?.forEach((element) {
          singleSliderControll.add(element);
          update();
        });

      }

    }finally{
      isLoading(false);
    }
  }

}