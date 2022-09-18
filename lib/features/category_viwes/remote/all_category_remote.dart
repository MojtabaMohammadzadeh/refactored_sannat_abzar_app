

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import '../model/all_category_model.dart';

class AllCategoryRemote{


  static Future<AllCategoryModel?> fetchAllCategory() async{
    Response response;
    var dio= Dio();

    response = await dio.post('http://10.0.2.2/abzarapi/v2/allcategoryplaces', data: {'page_param': '1', 'per_param': '10',});

    try{
      if (response.statusCode == 200) {
        print('this is response of category');

        return AllCategoryModel.fromJson(response.data);

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