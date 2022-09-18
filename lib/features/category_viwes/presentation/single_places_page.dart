


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controller/single_place_controller.dart';

class SinglePlacePage extends StatefulWidget {

  String PlaceId;
   SinglePlacePage({Key? key, required this.PlaceId}) : super(key: key);

  @override
  State<SinglePlacePage> createState() => _SinglePlacePageState();
}

class _SinglePlacePageState extends State<SinglePlacePage> {
  SinglePlaceControll _controller = Get.put(SinglePlaceControll());

  @override
  void initState() {
    // TODO: implement initState
    _controller.fetchSinglePlace(widget.PlaceId);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<SinglePlaceControll>(builder: (_)=>Text(_controller.titleControll??''),),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(

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
            SizedBox(height: 15,),
            // GetBuilder(builder: (_)=> Text(_controller.titleControll??'', style:TextStyle(fontSize: 30),textDirection: TextDirection.rtl,),
            // ),
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


            SizedBox(height: 25,),

          ],
        ),
      ),
    );
  }
}
