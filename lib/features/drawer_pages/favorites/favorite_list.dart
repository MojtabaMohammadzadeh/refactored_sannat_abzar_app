

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../main_nav_page.dart';
import '../../brands_viwe/presentation/products_page.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('علاقه مندی ها'),
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
      body: ListView(
        children: [
          Align(
            alignment: Alignment.center,
            child: Wrap(

                children: List.generate(10, (index){
                  return AllFavoriteCart();
                },)
            ),
          ),
        ],
      ),
    );
  }
}



class AllFavoriteCart extends StatelessWidget {

  const AllFavoriteCart({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(ProductsPage(productData: [], Index: 0,));
      },
      child: Container(
        margin: const EdgeInsets.all(15),
        width: 40.w,
        height: 20.h,

        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffF1F1F1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              offset: const Offset(
                1.0,
                5.0,
              ),
              spreadRadius: 1,
              blurRadius: 3,
            ), //BoxShadow
            //BoxShadow
          ],
        ),
        child: Column(
          children: [
            Container(
              width: 25.w,
              height: 10.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/img/tools.jpg'),
                    fit: BoxFit.fitWidth,
                  )
              ),
            ),
            const Text('دستگاه ...',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
            const SizedBox(height: 5,),

          ],
        ),
      ),
    );
  }
}
