


import 'package:get/get.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/model/most_viewed_brands.dart';

import 'first_page_controller.dart';

class TabBarController extends GetxController{

  var currentIndex = 0;




  changeCategories(index) async {
    currentIndex= index;

    update();
  }

}