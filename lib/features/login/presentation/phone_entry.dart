

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../controller/phone_entry_controller.dart';

class PhoneEntry extends StatelessWidget {
  final PhoneEntryController phoneController = Get.put(PhoneEntryController());

  PhoneEntry({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();



    return Scaffold(
      backgroundColor: Color(0xfff7dcd3),
      body:Center(
        child: ListView(
          scrollDirection: Axis.vertical,


          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only( top: 8.h, bottom: 4.h),
                  width:Device.orientation == Orientation.portrait ? 80.w : 20.w,
                  height: Device.orientation == Orientation.portrait ? 60.w : 20.w,

                  child: Image.asset('assets/img/phoneEnter.png'),
                ),


                const Text(' خوش آمدید',style: TextStyle(fontSize:30, fontWeight: FontWeight.w700),),

                Obx(()=>Text('${phoneController.errorMessage.value}',style:TextStyle(color: phoneController.colorthem.value),),),
                SizedBox(height:25),
                // **********************Text Field Start********************
                Container(
                  width: 70.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: TextField(
                      controller: _controller,
                      decoration:const InputDecoration(
                        icon: Icon(Icons.phone_android_outlined),
                        hintText: '091*******',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),

                      ),
                      keyboardType: TextInputType.number,
                      style:TextStyle(fontSize: 18, fontWeight:FontWeight.w700),

                    ),
                  ),
                ),


                // *******************************Text Field End************************
                const SizedBox(height: 30),
                // ******************************* Btn Enter Start**********************
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff182f41)),

                    shadowColor: MaterialStateProperty.all(Colors.black),
                    elevation: MaterialStateProperty.all(10),
                    padding:MaterialStateProperty.all(const EdgeInsets.only(right: 50, left: 50,top: 20,bottom: 15)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25))),
                  ),

                  onPressed: ()  {
                      phoneController.sendPhone(_controller.text);
                      //   PhoneEntryController().sendPhone(_controller.text);
                  },
                  child: const Text('ارسال کد',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700, fontSize: 18)),
                ),



                // *********************************Btn Enter End ***********************
                SizedBox(height: 10),
              ],
            )
          ],
        ),
      ),
    );
  }
}
