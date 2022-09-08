


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'news_modal.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 25,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context, builder: (context)=>NewsModal() );
            },
            child: Container(
              width: 80.w,
              height: 15.h,

              margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              decoration: BoxDecoration(
                color: Color(0xfff5f5f5),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  //background color of box
                  BoxShadow(
                      color: Colors.grey.shade400,
                    blurRadius: 3, // soften the shadow
                    spreadRadius: 1, //extend the shadow
                    offset: Offset(
                      2, // Move to right 10  horizontally
                      5, // Move to bottom 10 Vertically
                    ),
                  ),

                ],

              ),

            ),
          );
        });
  }
}