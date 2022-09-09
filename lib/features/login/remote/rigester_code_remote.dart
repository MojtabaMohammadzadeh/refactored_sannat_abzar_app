



import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import '../models/rigester_code_model.dart';

class RigesterCodeRemote {

static Future<RigesterCodeModel?> sendRigesterCode(String phoneNumber, String Code) async{
  Response response;
  var dio= Dio();

  response = await dio.post('http://www.abzarsaanat.ir/api/v1/checkcode',data: {
    'phone_number': phoneNumber,
    'code': Code,
    'type_device': 'android',
    'device_id': '',
    'device_name': ''});




  try{
    if (response.statusCode == 200) {

      print('this is response');
      // print(response.data);
      print(RigesterCodeModel.fromJson(response.data));

      return RigesterCodeModel.fromJson(response.data);

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