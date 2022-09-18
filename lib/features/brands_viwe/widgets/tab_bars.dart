


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/model/all_brand_categories.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controller/first_page_controller.dart';





class TabBarWidget extends StatelessWidget {
  final List<AllBrandCategories> tabsData ;
  TabBarWidget({Key? key, required this.tabsData}) : super(key: key);
  ProductController controller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      width: 5.w,
      margin: const EdgeInsets.only(top: 16, right: 10),
      child: ListView.builder(
          reverse: true,
          itemCount: tabsData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                controller.changeCategories(index);
              },
              child: Obx((){
                return Container(
                  width: 20.w,

                  margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                  decoration: BoxDecoration(
                    color: index == controller.currentIndex.value
                        ? Color(0xff67F5A5)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(
                          1.0,
                          2.0,
                        ),
                        color: index == controller.currentIndex.value
                            ? Color(0xff031547).withOpacity(0.5)
                            : Colors.transparent,
                        spreadRadius: 1,
                        blurRadius: 1,
                      ), //BoxShadow
                      //BoxShadow
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(

                    vertical: 10,

                  ),
                  child: Text(
                    tabsData[index].title?? '',textAlign: TextAlign.center,
                  ),
                );
              }),
            );
          }) ,
    );
  }


}
