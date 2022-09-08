


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:main_abzar_sanat_app/features/drawer_pages/shop_list/shop_modal.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../main_nav_page.dart';

class ShopList extends StatelessWidget {
  const ShopList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('سفارش ها'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Get.to(MainNavPage());
              // do something
            },
          )
        ],

      ),
      body:ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context, builder: (context)=> ShopModal());
            },
            child: Container(
                height: 15.h,
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                decoration: BoxDecoration(
                  color: Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(15),
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
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text('سفارش ${index}',style: TextStyle(fontWeight:FontWeight.w700,fontSize: 16),),
                  ),
                )

            ),
          );
        },

      ),
    );
  }
}
