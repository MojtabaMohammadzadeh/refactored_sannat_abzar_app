
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

import '../model/first_page_model.dart';



class FirstPageRemote {


  static Future<FirstPageModel?> fetchFirstPage() async{
    List <FirstPageModel> _list = [];

    Response response;
    var dio= Dio();
    response = await dio.post('http://10.0.2.2/abzarapi/v2/firstpage', data: {'token': '', 'device_id': 'EMULATOR31X2X10X0','device_name': 'NEXUS 6 API 30','vandroid': '11','push_token': '',});
    print('this is status');
    print(response.statusCode);
    try{
      if (response.statusCode == 200) {
        print('this is response');

         return FirstPageModel.fromJson(response.data);

      }

      else  {

        print('heeeeeeeeeeeeeeeeeeeelppppp');
        return null;
      }
    }catch(e){
      print('hooooooooooooooooooooooooooooo');
      print(e);
      return null;

    }
  }
}