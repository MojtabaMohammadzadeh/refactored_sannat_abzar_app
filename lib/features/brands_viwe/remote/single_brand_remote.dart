
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;



import '../model/single_brands/single_brand_model.dart';

class SingleBrandRemote {

  static Future<SingleBrandModel?> fetchSingleBrand(String idBrand) async{
    Response response;
    var dio= Dio();
    response = await dio.post('http://10.0.2.2/abzarapi/v2/singlebrand',
        data: {
      'token': 'B49K61mY',
      'page_param': '1',
      'per_param': '10',
      'id_brand': idBrand});

    try{
      if (response.statusCode == 200) {
        print('this is response');

        return SingleBrandModel.fromJson(response.data);

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