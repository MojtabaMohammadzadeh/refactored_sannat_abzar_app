

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:get_storage/get_storage.dart';
import '../models/send_phone_model.dart';

class SendPhoneRemote {


  static Future<SendPhoneResponse?> sendPhoneNumber(String phoneNumber) async {

      Response response;
      var dio= Dio();
      response = await dio.post('http://www.abzarsaanat.ir/api/v1/sendcode',data: {'phone_number':phoneNumber,'ios': '','sms_code': '1lPbVWLo'});
      print('this is response');
      print(jsonDecode(response.data));
      print(response.statusCode);
      try{
        if (response.statusCode == 200) {


          // print(response.data);


          return SendPhoneResponse.fromJson(jsonDecode(response.data));

        }

        else {
          print('this is Error Message');

          return null;
        }
      }catch(e){
        Get.snackbar('can not get data', e.toString());
        return null;

      }
  }

}