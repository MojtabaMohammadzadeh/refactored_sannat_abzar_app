




import 'package:get/get.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/model/single_brands/last_price_single_brand.dart';

import '../model/single_brands/Products.dart';
import '../model/single_brands/list_category.dart';
import '../remote/single_brand_remote.dart';

class SingleBrandController extends GetxController{

  var isLoading = true.obs;
  var controllCategoryList = <ListCategory> [];
  var controllProductsList = <Products> [];
  var controllLastPrice = <LastPriceSingleBrand>[];

  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //
  //   getSingleBrand();
  //
  //   super.onInit();
  // }

  void getSingleBrand(String? brand_id) async{
    isLoading(true);
    String brandId = brand_id?? '10';
    try{

      var singleBrand = await SingleBrandRemote.fetchSingleBrand(brandId);

      if (singleBrand != null){

        singleBrand.lastPrice?.forEach((element) {
          controllLastPrice.add(element);
          update();
        });

        singleBrand.listCategory?.forEach((element) {
          controllCategoryList.add(element);
          update();

        });
      }

    }finally{}
  }


}