

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisteryCode extends StatelessWidget {
  const RegisteryCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  // errorAnimationController: errorController,
                  // controller: textEditingController,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);

                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  }, appContext:context,

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
                  Navigator.pushReplacementNamed(

                    context,'/home' ,
                  );
                },
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
