

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

import '../model/sub_category/sub_category_model.dart';





class SubCategoryRemote{


  static Future<SubCategoryModel?> fetchSubCategory(String id_category) async{
    Response response;
    var dio= Dio();

    response = await dio.post('http://10.0.2.2/abzarapi/v2/allsubcategoryplaces',
        data: {
      'page_param': '1',
      'per_param': '10',
      'id_category': id_category,});
      print('this is sub catttttt response');
      print(response.statusCode);
    try{
      if (response.statusCode == 200) {
        print('this is response of Subcategory');

        return SubCategoryModel.fromJson(response.data);

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