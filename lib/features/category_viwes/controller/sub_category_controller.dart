


import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';




import '../model/sub_category/sub_places_category.dart';
import '../remote/sub_category_remote.dart';

class SubCategoryController extends GetxController{
  var isLoading = true.obs;
  var controllSubCategoryList = <SubPlacescategory>[];
  var controllPageTitle = '';


  void fetchSubCategory(String idCategory) async {
    isLoading(true);
    var IdCategory = idCategory ?? '0';
    try{

      var products = await SubCategoryRemote.fetchSubCategory(IdCategory);

      if (products != null){

        controllPageTitle = products.parentName;

        products.subplacescategory?.forEach((element) {
          controllSubCategoryList.add(element);

          update();
        });
        update();
      }
    }finally{
      isLoading(false);
    }

  }

}