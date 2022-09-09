

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controller/rigester_code_controller.dart';

class RegisteryCode extends StatelessWidget {

  final String phoneNumber;
   RegisteryCode({Key? key,required this.phoneNumber}) : super(key: key);

  RigestryCodeController rigesterController = Get.put(RigestryCodeController());


  @override
  Widget build(BuildContext context) {
    var Codeinput;
    return Scaffold(
      backgroundColor: const Color(0xfff7dcd3),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5.h, top:10.h),
                width: 80.w,
                height: 60.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/register.png'),
                  ),
                ),

              ),


              const Text('.لطفا کد ارسال شده به موبایل تان را وارد نمایید',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),

              // **********************Text Field Start********************
              // **********************Pin Code Input*************
              Container(
                width: 60.w,
                margin: EdgeInsets.only(top: 10.h, bottom: 5.h),

                child: PinCodeTextField(

                  length: 4,
                  boxShadows: const [BoxShadow(
                      color: Colors.black38,
                      offset: Offset(1, 2),
                      blurRadius: 5),],
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 50,
                    fieldWidth: 8.w,
                    inactiveFillColor: Colors.white,
                    inactiveColor: Colors.white,
                  ),
                  animationDuration: const Duration(milliseconds: 300),

                  enableActiveFill: true,

                  appContext:context,
                  onChanged: (String value) {
                    rigesterController.updateCode(value);
                  },
                  onCompleted: (String value){
                    rigesterController.updateCode(value);
                  },
                  onSubmitted: (String value){

                  },

                ),
              ),
              // *******************************Pin Code End*****************
              // *******************************Text Field End************************

              // ******************************* Btn Enter Start**********************
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff182f41)),

                  shadowColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(15),
                  padding:MaterialStateProperty.all(const EdgeInsets.only(right: 50, left: 50,top: 20,bottom: 15)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25),)),
                ),
                onPressed: (){
                  // print('this is code input');
                  // print(Codeinput);
                  rigesterController.sendCode(phoneNumber); },
                child: const Text('ورود',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700, fontSize: 18,   ),),
              ),

              // *********************************Btn Enter End ***********************
              const SizedBox(height: 5),
            ],
          ),
        ],
      ),
    );
  }
}
