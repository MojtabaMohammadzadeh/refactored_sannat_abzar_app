


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:main_abzar_sanat_app/features/store/presentation/product_details_store.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ShopHorizentalList extends StatelessWidget {
  const ShopHorizentalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 20.h,

      child: ListView.builder(
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder:(context,index){
            return GestureDetector(
              onTap: () {
                Get.to(ProductsDetailsStore());
              },
              child: Container(
                margin: EdgeInsets.only(right: 5,left: 5, ),
                width: 45.w,
                decoration: BoxDecoration(
                  color: const Color(0xfff5f5f5),
                  border: Border.all(width: 1, color: Colors.black45),
                  borderRadius: BorderRadius.circular(15),

                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width:25.w ,
                      height: 10.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),

                        image: DecorationImage(
                          image: AssetImage('assets/img/drill.png'),
                          fit: BoxFit.fitHeight,
                        ),

                      ),
                    ),
                    Text('اره آتشی سه فاز پایه وسط',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),textAlign:TextAlign.center,),

                    Text('1200000 تومان',style: TextStyle(fontSize: 12),textDirection: TextDirection.rtl,),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
