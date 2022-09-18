




import 'package:get/get.dart';

import '../model/places_category.dart';
import '../remote/all_category_remote.dart';

class AllCategoryController extends GetxController{
  var isLoading = true.obs;
  var controllPlacesCategory = <Placescategory>[].obs;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchAllCategory();
  }

  void fetchAllCategory() async {
    isLoading(true);

    try{

     var products = await AllCategoryRemote.fetchAllCategory();

     if (products != null){
        products.placescategory?.forEach((element) {
          controllPlacesCategory.add(element);
        });
     }
    }finally{
      isLoading(false);
    }

  }
}