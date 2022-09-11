


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
   final ProductController firstPageController = Get.put(ProductController());


  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
      child: Obx((){
        if (firstPageController.isLoading.isTrue){
          return const LoadingContainer();
        }
        else {

          return ListView(
            children: [

              BuildSearch(text: '',),
              ImageSlider(slidersData: firstPageController.controllSlider1,),
              TabBarWidget(tabsData: firstPageController.controlltabs,),
              const SizedBox(height: 20,),
              TitleWidget(title: 'پربازدیدها', bottomText: 'موارد بیشتر',link: '/listbrands',),
              const SizedBox(height: 5,),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 10,

                endIndent: 10,
                color: Colors.black12,
              ),
              const SizedBox(height: 5,),
              HorizentalListWidget(),
              const SizedBox(height: 15,),


              LastPrice(),
              const SizedBox(height: 15,),
              TitleWidget(title: 'جدیدترین ها', bottomText: 'موارد بیشتر', link: '/allbrands',),
              const Divider( height: 2, thickness: 1, indent: 10, endIndent: 10, color: Colors.black12,),
              const SizedBox(height: 15,),
              HorizentalListWidget(),
              const SizedBox(height: 25,),
              // ImageSlider(),
              const SizedBox(height: 25,),

              TitleWidget(title: 'همه', bottomText: 'موارد بیشتر',link: '/allbrands',),
              const Divider( height: 2, thickness: 1, indent: 10, endIndent: 10, color: Colors.black12,),

              // WrapListViwe(),

            ],
          );
        }

        return Container(child: Text('خطایی به وجود آمده است'),);
      })

    );
  }
}
