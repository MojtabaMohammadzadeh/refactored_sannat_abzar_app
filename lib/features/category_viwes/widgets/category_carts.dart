


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../model/places_category.dart';
import '../presentation/single_category.dart';

class CategoryCart extends StatelessWidget {
  List <Placescategory> categoryData;
  int index;
  CategoryCart( {Key? key,required this.categoryData, required this.index

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){

         Get.to(()=> SingleCategory(categoryId: categoryData[index].id.toString(),));
      },
      child: Container(
        // Widget for Portrait
        margin: EdgeInsets.all(15),
        width: 40.w,
        height: 30.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),

          color: Color(0xff546CB8),

          boxShadow: [
            //background color of box
            BoxShadow(
              color: Colors.black54.withOpacity(0.3),
              blurRadius: 5, // soften the shadow
              spreadRadius: 2, //extend the shadow
              offset: Offset(
                2, // Move to right 10  horizontally
                5, // Move to bottom 10 Vertically
              ),
            ),

          ],
        ),


        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            SizedBox(height: 5,),
            Text(categoryData[index].title??'', style: TextStyle(fontSize:14,fontWeight: FontWeight.w700,color: Colors.white),textAlign: TextAlign.center,),


            Container(
                width: 25.w,
                height: 15.h,

                margin: EdgeInsets.only(top: 4.w),

                // decoration: BoxDecoration(
                //
                //   image: DecorationImage(
                //     image: AssetImage(image),
                //     fit: BoxFit.fill,
                //   ),
                  // color: Colors.white,


                // )

            ),
          ],
        ),
      ),
    );
  }

}
