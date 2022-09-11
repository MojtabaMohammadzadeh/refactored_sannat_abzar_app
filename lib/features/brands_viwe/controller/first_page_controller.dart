




import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/model/all_brand_categories.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/model/sliders.dart';

import '../model/all_brands.dart';

import '../remote/first_page_remote.dart';

class ProductController extends GetxController{
  var isLoading = true.obs;
  var controllAllBrands = <AllBrands>[].obs;
  var controllMostViwe = <AllBrands>[].obs;
  var controllSlider1 = <Sliders1>[].obs;
  var controlltabs = <AllBrandCategories>[].obs;
  @override
    void onInit() {
    // TODO: implement onInit

    fetchProducts();

    super.onInit();
  }

   void fetchProducts() async {
    isLoading(true);
    try{

      var products=  await FirstPageRemote.fetchFirstPage();

      if( products != null){

        products.sliders1?.forEach((item) {
          controllSlider1.add(item);
        });

        products.allBrandCategories?.forEach((element) {
          controlltabs.add(element);
        });
        // products.mostViewedBrands?.forEach((element) {
        //   controllMostViwe.add(element);
        // });

        products.allBrands?.forEach((element) {
          controllAllBrands.add(element);
        });

      }
    }finally{
      isLoading(false);
    }
  }

}