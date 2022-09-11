

import 'package:flutter/cupertino.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';import 'package:get/get_core/src/get_main.dart';
import 'package:main_abzar_sanat_app/features/drawer_pages/shoping_cart/shoping_cart.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/main_widgets/image_slider.dart';
import '../../../main_nav_page.dart';

class ProductsDetailsStore extends StatelessWidget {
  const ProductsDetailsStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){Get.to(ShoppingCart());}, icon: Icon(Icons.shopping_cart)),
              Text('فروشگاه نیکوکار', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),textDirection: TextDirection.rtl,),

            ],
          ),
          // ImageSlider(),

          Text('اره آتشی سه پایه فلزی',style: TextStyle(fontWeight:FontWeight.w700,fontSize: 20),),

          Container(
            width: 80.w,
            child:Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae ultricies leo integer malesuada nunc vel. Accumsan tortor posuere ac ut consequat. Eget mauris pharetra et ultrices neque ornare aenean. Ac auctor augue mauris augue neque gravida in',style: TextStyle(fontSize: 12),textDirection: TextDirection.rtl,),

          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff182f41)),

                  shadowColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(10),
                  padding:MaterialStateProperty.all(const EdgeInsets.only(right: 10, left: 10,top: 5,bottom: 5)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10))),
                ),
                label: Text('افزودن به سبد خرید'),
                icon: Icon(Icons.shop),
              ),

              SizedBox(width: 35,),
              IconButton(onPressed: () {

              }, icon: const Icon(Icons.remove_circle_outline,size: 35,)),
              SizedBox(width: 15,),

              Text('0',style: TextStyle(fontSize: 35),),
              SizedBox(width: 15,),


              IconButton(onPressed: () {

              }, icon: const Icon(Icons.add_circle_outline,size: 35,)),

            ],
          ),
          SizedBox(height: 35,),


        ],
      ),
    );
  }
}
