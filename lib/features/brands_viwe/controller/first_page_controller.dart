




import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/model/all_brand_categories.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/model/first_page_model.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/model/last_prices.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/model/sliders.dart';

import '../model/all_brands.dart';

import '../remote/first_page_remote.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var controllAllBrands = <AllBrands>[];
  var categorizeAllBrand = <AllBrands>[].obs;
  var controllMostViwe = <AllBrands>[];
  var categorizedMostViwe = <AllBrands>[].obs;

  var controllSlider1 = <Sliders1>[].obs;
  var controllSlider2 = <Sliders1>[].obs;
  var controlltabs = <AllBrandCategories>[].obs;
  var controllLastPrice = <LastPrices> [].obs;
  var controllNewBrand = <AllBrands> [];
  var categorizeNewBrand = <AllBrands> [].obs;
  var currentIndex = 0.obs;
  var products;

  // ***********************Init*********************
  @override
    void onInit() {
    // TODO: implement onInit
    fetchProducts();

    super.onInit();
  }

// *************************Change TAb bar***********************
  changeCategories(index) async {
    currentIndex.value= index;

      categorizedMostViwe.clear();
      categorizeNewBrand.clear();
    categorizeAllBrand.clear();
    // ****************** Most Viwed Change***********************
    controllMostViwe.forEach((element) {
      if(element.category_brand_id == index+1){
        categorizedMostViwe.add(element); };
    });

    controllNewBrand.forEach((element) {
      if(element.category_brand_id == index+1){
        categorizeNewBrand.add(element); };
    });

    controllAllBrands.forEach((element) {
      if(element.category_brand_id == index+1){
        categorizeAllBrand.add(element); };
    });
    update();
  }

  // ************************************Fetch Products**********
   void fetchProducts() async {
    isLoading(true);
    try{

      products=  await FirstPageRemote.fetchFirstPage();

      if( products != null){

        products.sliders1?.forEach((item) {
          controllSlider1.add(item);
        });
        products.sliders2?.forEach((item) {
          controllSlider2.add(item);
        });

        products.allBrandCategories?.forEach((element) {
          controlltabs.add(element);
        });
        products.mostViewedBrands?.forEach((element) {

            controllMostViwe.add(element);
                    });

        products.lastPrices?.forEach((element) {

          controllLastPrice.add(element);
        });

        products.newBrands?.forEach((element) {

          controllNewBrand.add(element);
        });

        products.allBrands?.forEach((element) {
          controllAllBrands.add(element);
        });

         changeCategories(0);
      }
    }finally{
      isLoading(false);
    }
  }

}