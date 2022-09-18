


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/horizental_list_widget.dart';
import '../../../core/main_widgets/image_slider.dart';
import '../../../core/main_widgets/search.dart';
import '../../../core/main_widgets/title_widget.dart';
import '../controller/first_page_controller.dart';
import '../widgets/last_price.dart';
import '../widgets/tab_bars.dart';
import '../widgets/wrap_list_viwe.dart';

class AllBrandsViwe extends StatelessWidget {
   AllBrandsViwe({Key? key}) : super(key: key);
   final ProductController controller = Get.put(ProductController());


  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
      child: ListView(
        children: [

          BuildSearch(text: '',),
          ImageSlider(slidersData: controller.controllSlider1,),
          GetBuilder<ProductController>(builder: (_)=> TabBarWidget(tabsData: controller.controlltabs,),),
          const SizedBox(height: 20,),
          TitleWidget(title: 'پربازدیدها', bottomText: '',link: '',),
          const SizedBox(height: 5,),
          const Divider(
            height: 2,
            thickness: 1,
            indent: 10,

            endIndent: 10,
            color: Colors.black12,
          ),
          const SizedBox(height: 5,),
          GetBuilder<ProductController>(

            builder: (_)=>HorizentalListWidget(listData: controller.categorizedMostViwe,),),

          const SizedBox(height: 15,),


          GetBuilder<ProductController>(builder: (_)=> LastPrice(lastPriceData: controller.controllLastPrice,),),
          const SizedBox(height: 15,),
          TitleWidget(title: 'جدیدترین ها', bottomText: '', link: '',),
          const Divider( height: 2, thickness: 1, indent: 10, endIndent: 10, color: Colors.black12,),
          const SizedBox(height: 15,),
          GetBuilder<ProductController>(builder: (_)=>HorizentalListWidget(listData: controller.categorizeNewBrand,),),

          const SizedBox(height: 25,),
          ImageSlider(slidersData: controller.controllSlider2,),
          const SizedBox(height: 25,),

          TitleWidget(title: 'همه', bottomText: 'موارد بیشتر',link: '/allbrands',),
          const Divider( height: 2, thickness: 1, indent: 10, endIndent: 10, color: Colors.black12,),

          GetBuilder<ProductController>(builder: (_)=>WrapListViwe(wrapData: controller.categorizeAllBrand)),


        ],
      ),

      );


  }
}
