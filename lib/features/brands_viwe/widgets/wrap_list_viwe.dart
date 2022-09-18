


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:responsive_sizer/responsive_sizer.dart';


import '../model/all_brands.dart';
import '../presentation/single_brand.dart';


class WrapListViwe extends StatelessWidget {
  List <AllBrands> wrapData;
   WrapListViwe({Key? key, required this.wrapData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Wrap( children: List.generate(wrapData.length, (index){
        return AllCart(wrapData[index]);    }
      ),),
    );
  }
}




class AllCart extends StatelessWidget {

  final AllBrands singleBrand;


  AllCart(this.singleBrand);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(SingleBrand(idBrand: singleBrand.id.toString(),));
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

              ),
            ),
            Text(singleBrand.name?? 'Not',style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700),),
            const SizedBox(height: 5,),
            const Text(' محصولات 3535 مورد',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: Colors.black45),),
          ],
        ),
      ),
    );
  }
}



class LoadingContainer extends StatelessWidget {
  const LoadingContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}