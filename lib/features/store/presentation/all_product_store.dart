


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/widgets/tab_bars.dart';
import 'package:main_abzar_sanat_app/features/drawer_pages/shoping_cart/shoping_cart.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../main_nav_page.dart';
import '../widget/shop_wrap_list.dart';

class AllProductsStore extends StatelessWidget {
  const AllProductsStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shopall products'),

        centerTitle: true,
        backgroundColor: Color(0xff0F1B6D),
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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){Get.to(ShoppingCart());}, icon: Icon(Icons.shopping_cart)),

              Text('فروشگاه نیکوکار', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),textDirection: TextDirection.rtl,),
            ],
          ),
          Container(
            width: 100.w,
            // child: TabBarWidget(tabsData: ['محصول اول','محصول دوم','محصول سوم']),
          ),
          SizedBox(height: 5.h,),
          Expanded(
            child: ListView(
              children: [

                ShopWrapList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
