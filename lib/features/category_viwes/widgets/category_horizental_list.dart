



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'category_modal.dart';

class CategoryHorizentalList extends StatelessWidget {
  const CategoryHorizentalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 28.h,

      child: ListView.builder(
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder:(context,index){
            return GestureDetector(
              onTap: (){
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context, builder: (context)=> CategoryModal());
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                width: 35.w,


                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    //background color of box
                    BoxShadow(
                      color: Colors.black54.withOpacity(0.3),
                      blurRadius: 5, // soften the shadow
                      spreadRadius: 2, //extend the shadow
                      offset: Offset(
                        2, // Move to right 10  horizontally
                        5, // Move to bottom 10 Vertically
                      ),
                    ),

                  ],
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: 30.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/img/tools.jpg'),
                          fit: BoxFit.fill
                        ),
                      ),
                    ),
                    Text('عنوان', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
