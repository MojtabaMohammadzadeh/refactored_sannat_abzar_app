


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/presentation/products_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../model/single_brands/list_category.dart';

class SingleListViwe extends StatelessWidget {

  List <ListCategory> ListData;
   SingleListViwe({Key? key,required this.ListData }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount:ListData.length,
        itemBuilder:(context, index){
          return Container(
            width: 100.w,
            height: 25.h,

            margin: EdgeInsets.only(top: 5, bottom: 5.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text( ListData[index].name ?? ''),
                const Divider(
                  height: 2,
                  thickness: 1,
                  indent: 10,

                  endIndent: 10,
                  color: Colors.black12,
                ),
                SizedBox(height: 5,),
                Expanded(child:ListView.builder(
                    shrinkWrap: true,
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemCount:ListData[index].products.length ,
                    itemBuilder:(context,item){
                      return GestureDetector(
                        onTap: () {
                          Get.to(()=>ProductsPage(productData: ListData[index].products, Index: item,));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 5,left: 5,bottom:10, ),
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
                              Text(ListData[index].products[item].title?? '',style: TextStyle(fontWeight:FontWeight.w600,fontSize:10,),textDirection: TextDirection.rtl,textAlign:TextAlign.center,),
                            ],
                          ),
                        ),
                      );
                    }), ),
              ],
            ),
          );


        } );




  }
}
