



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CategoryModal extends StatelessWidget {
  const CategoryModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [

        Container(
          margin: EdgeInsets.only(top:10.h),
          width: 80.w,
          height: 30.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage('assets/img/tools.jpg'),
                fit: BoxFit.fill
            ),
          ),

        ),
        Expanded(
            child:ListView(
              children: [
                SizedBox(height: 15,),
                Text('عنوان', style:TextStyle(fontSize: 30),textDirection: TextDirection.rtl,),
                SizedBox(height: 15,),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae ultricies leo integer malesuada nunc vel. Accumsan tortor posuere ac ut consequat. Eget mauris pharetra et ultrices neque ornare aenean. Ac auctor augue mauris augue neque gravida in',style: TextStyle(fontSize: 12),textDirection: TextDirection.rtl,),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 10),
                      width: 45.w,
                      height: 15.h,
                      color: Colors.amber,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10,left: 10),
                      width: 45.w,
                      height: 15.h,
                      color: Colors.blue,
                    )
                  ],
                ),
              ],
            )
        ),

        Container(
          margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.only(right: 25,left: 15),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_left,size:50,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right,size:50,)),

            ],
          ),
        ),
        SizedBox(height: 25,),

      ],
    );
  }
}
