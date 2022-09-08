



import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../main_nav_page.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(

              width: 70.w,
              height: 25.h,
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
              child:           const Text('اینورت جوشکاری 250 سری تاپ لاین مدلRH-4000', style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),textDirection: TextDirection.rtl,textAlign: TextAlign.center,),

            ),

            SizedBox(
              width: 70.w,
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae ultricies leo integer malesuada nunc vel. Accumsan tortor posuere ac ut consequat. Eget mauris pharetra et ultrices neque ornare aenean. Ac auctor augue mauris augue neque gravida in',style: const TextStyle(fontSize: 12, ),textDirection: TextDirection.rtl,),

            ),

            ElevatedButton.icon(onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xff182f41)),


                elevation: MaterialStateProperty.all(10),
                padding:MaterialStateProperty.all(const EdgeInsets.only(right: 20, left: 20,top: 5,bottom: 5)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25))),
              ),
              icon: const Icon(Icons.pin_invoke),
              label: const Text("افزودن به علاقه مندی ها"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_left,size:32,),),

                IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right,size: 32,)),

              ],
            )

          ],
        ),
      ),
    );
  }
}
