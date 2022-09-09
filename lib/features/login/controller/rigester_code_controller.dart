

import 'package:get/get.dart';
import 'package:main_abzar_sanat_app/features/login/controller/splash_controller.dart';
import 'package:main_abzar_sanat_app/features/login/remote/rigester_code_remote.dart';
import 'package:main_abzar_sanat_app/main_nav_page.dart';

class RigestryCodeController extends GetxController{
final codeValue = '0'.obs;


updateCode (String code){
  codeValue.value = code;
}

  sendCode (String phoneNumber) async {

    var codeResponse = await RigesterCodeRemote.sendRigesterCode(phoneNumber, codeValue.value) ;

    if(codeResponse?.success == 1){
      AuthenticationManager().login(codeResponse?.token);
      Get.off(MainNavPage());
    }
    else{
      print('this is error message');
      print(codeResponse?.msg);

    }

  }



}