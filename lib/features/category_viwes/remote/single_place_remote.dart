

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import '../model/single_places/single_place_model.dart';

class SinglePlaceRemote{


  static Future<SinglePlaceModel?> fetchSinglePlace(String IdPlaces) async{

    Response response;
    var dio= Dio();

    response = await dio.post('http://www.abzarsaanat.ir/api/v1/singleplaces',
        data: {
          'token': 'Yd1Qd2Ql',
          'page_param': '1',
          'per_param': '10',
          'id_place': IdPlaces});

    try{
      if (response.statusCode == 200) {


        return SinglePlaceModel.fromJson(response.data);

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