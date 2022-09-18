



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:main_abzar_sanat_app/core/main_widgets/search.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/controller/first_page_controller.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/presentation/single_brand.dart';
import 'package:main_abzar_sanat_app/main_nav_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BrandsList extends StatelessWidget {
  BrandsList({Key? key}) : super(key: key);
ProductController _controller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('همه برندها'),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BuildSearch(text: ''),
          Expanded(
            child:ListView.builder(

                itemCount: _controller.categorizeAllBrand.length,
                itemBuilder:(context,index){
                  return GestureDetector(
                    onTap: (){
                      Get.to(SingleBrand(idBrand: _controller.categorizeAllBrand[index].id.toString(),));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 15, right: 10,left: 10),
                      width: 85.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xfff5f5f5),
                        // border: Border.all(width: 1, color: Colors.black45),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(2.0, 3.0),
                            blurRadius: 3,
                            spreadRadius: 1,
                          ),
                        ],




                      ),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(3.w),
                              width:25.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage('assets/img/ronix-png.png')
                                ),
                              ),

                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                Text(_controller.categorizeAllBrand[index].name??'',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                SizedBox(height: 15,),
                                Text('تعداد محصول 35 مورد',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black45),),



                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                } ), ),
        ],
      ),
    );;
  }
}


