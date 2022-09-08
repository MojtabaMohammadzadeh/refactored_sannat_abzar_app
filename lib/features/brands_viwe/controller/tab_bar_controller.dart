


import 'package:get/get.dart';

class TabBarController extends GetxController{

  var currentIndex = 0;

  changeCategories(index) async {
    currentIndex= index;
    update();
  }
}