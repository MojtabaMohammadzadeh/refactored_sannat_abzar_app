


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/presentation/products.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SingleListViwe extends StatelessWidget {
  const SingleListViwe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 100.w,
      height: 25.h,

      margin: EdgeInsets.only(top: 5, bottom: 10),
      child: ListView.builder(
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder:(context,index){
            return GestureDetector(
              onTap: () {
                Get.to(Products());
              },
              child: Container(
                margin: const EdgeInsets.only(right: 5,left: 5, ),
                width: 45.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1, color: Colors.black12),
                  color: const Color(0xfff5f5f5),
                  boxShadow: [
                    BoxShadow(
                      color:Colors.grey.withOpacity(0.3),

                      offset: const Offset(
                        0.0,
                        5.0,
                      ),
                      spreadRadius: 1,
                      blurRadius: 4,
                    ), //BoxShadow
                    //BoxShadow
                  ],
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 30.w,
                      height: 13.h,
                      margin: EdgeInsets.only(top: 3,bottom: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),

                        image: DecorationImage(
                          image: AssetImage('assets/img/drill.png'),
                        ),
                      ),

                    ),
                    Text('اینورت جوشکاری 250 سری تاپ لاین مدلRH-4000',style: TextStyle(fontWeight:FontWeight.w600,fontSize:12,),textDirection: TextDirection.rtl,textAlign:TextAlign.center,),
                  ],
                ),
              ),
            );
          }),
    );




  }
}
