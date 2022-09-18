


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../model/single_brands/last_price_single_brand.dart';

class LastPriceSingle extends StatelessWidget {
  List<LastPriceSingleBrand> lastPriceData;
   LastPriceSingle({Key? key, required this.lastPriceData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15.h,
      width: 100.w,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text('آخرین قیمت ها',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700 ),textAlign:TextAlign.right,),
          const Divider(
            height: 2,
            thickness: 1,
            indent: 10,

            endIndent: 10,

          ),
          SizedBox(
            height: 10.h,
            width: 100.w,

            child: ListView.builder(
                reverse: true,
                scrollDirection: Axis.horizontal,
                itemCount: lastPriceData.length,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(right: 5),
                    width:35.w,
                    height: 10.h,
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide( //                   <--- right side
                          color: Colors.black12,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text(lastPriceData[index].name?? '',style: TextStyle(fontSize: 12),textAlign: TextAlign.center,),
                        SizedBox(height: 5,),
                        Divider(
                          height: 2,
                          thickness: 1,
                          indent: 10,

                          endIndent: 10,
                          color: Colors.black12,
                        ),
                        SizedBox(height: 5,),
                        Directionality(textDirection: TextDirection.rtl,
                          child:Text((lastPriceData[index].price.toString())?? '', style: TextStyle(fontSize: 12),),),

                      ],
                    ),
                  );
                }),
          )

        ],
      ),
    );
  }
}
