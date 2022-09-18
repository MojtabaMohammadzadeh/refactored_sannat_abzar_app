
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



import '../model/all_brands.dart';
import '../presentation/single_brand.dart';

class HorizentalListWidget extends StatelessWidget {

  List<AllBrands> listData ;
   HorizentalListWidget({Key? key, required this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<AllBrands> selectedData;
    return SizedBox(
      width: 100.w,
      height: 15.h,

      child: ListView.builder(
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemCount: listData.length,
          itemBuilder:(context,index){
            return GestureDetector(
              onTap: (){

                Get.to(()=>SingleBrand(idBrand: listData[index].id.toString(),));
              },
              child: Container(
                margin: EdgeInsets.only(left: 10 ),
                width: 55.w,
                height: 18.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: Colors.black38,
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:  [
                        Text(listData[index].name??'',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                        SizedBox(height: 10,),
                        Text(' محصولات 3535 مورد',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: Colors.black45),),

                      ],
                    ),
                    Container(
                      width: 20.w,
                      height: 10.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('assets/img/proxy.jpg'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
