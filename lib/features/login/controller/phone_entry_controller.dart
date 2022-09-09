


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main_abzar_sanat_app/features/login/remote/send_phone_remote.dart';

import '../presentation/register_code.dart';

class PhoneEntryController extends GetxController {

  final errorMessage = '.لطفا شماره موبایل خود را وارد نمایید'.obs;
  final colorthem = Colors.black45.obs;



   sendPhone(String phoneNumber) async{

    if(phoneNumber.startsWith("0"))
    {
       errorMessage.value = '.لطفا شماره موبایل خود را وارد نمایید';
       colorthem.value = Colors.black45;
      print('this is if phoneNumber is Zero');
    phoneNumber = phoneNumber.replaceFirst("0", "98*");
    print(phoneNumber);
    var sendPhoneResp = await SendPhoneRemote.sendPhoneNumber(phoneNumber);
    print('this is sendPhoneResp');
    print(sendPhoneResp);
    if(sendPhoneResp?.success == 1){

      Get.to(RegisteryCode( phoneNumber: phoneNumber,));
    }
    else{
      print('there is some errore');
      String message = sendPhoneResp?.msg ?? 'خطا';
       AlertDialog(
        title: Text("My title"),
        content: Text(message),

      );
    }
    }else{

       errorMessage.value = '.لطفا شماره را به صورت صحیح وارد نمایید' ;
       colorthem.value = Colors.red;
      update();

    }


  }
}