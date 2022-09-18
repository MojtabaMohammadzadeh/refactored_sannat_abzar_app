



import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../main_nav_page.dart';
import '../model/single_brands/products.dart';

class ProductsPage extends StatelessWidget {

  List <Products> productData;
  int? Index;
   ProductsPage({Key? key, required this.productData, required this.Index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('product details'),
        centerTitle: true,
        backgroundColor: const Color(0xff0F1B6D),
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
      body: CarouselSlider.builder(

        itemCount: productData.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return ListView(

            children: [

              Container(

                width: 70.w,
                height: 25.h,
                margin: EdgeInsets.symmetric(horizontal:15, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),

                  image: const DecorationImage(
                    image: AssetImage('assets/img/tools.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),

              ),
              SizedBox(
                width: 80.w,
                child: Text(productData[itemIndex].title?? '', style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),textDirection: TextDirection.rtl,textAlign: TextAlign.center,),

              ),

              SizedBox(
                width: 70.w,
                child: Text(productData[Index?? 0].content?? '',style: const TextStyle(fontSize: 12, ),textDirection: TextDirection.rtl,),

              ),

              Container(
                margin: EdgeInsets.symmetric(vertical:10,horizontal: 25),
                child: ElevatedButton.icon(onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xff182f41)),


                    elevation: MaterialStateProperty.all(10),
                    padding:MaterialStateProperty.all(const EdgeInsets.only(right: 20, left: 20,top: 5,bottom: 5)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25))),
                  ),
                  icon: const Icon(Icons.pin_invoke),
                  label: const Text("افزودن به علاقه مندی ها"),
                ),
              )


            ],
          );
        }, options: CarouselOptions(
        autoPlay: false,
        viewportFraction: 0.8,
        aspectRatio: 0.7,
        initialPage: this.Index?? 0,
        enableInfiniteScroll: true,
      ),
      ),
    );
  }
}
