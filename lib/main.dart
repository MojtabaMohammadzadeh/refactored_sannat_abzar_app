import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/presentation/brands_list.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/presentation/products_page.dart';
import 'package:main_abzar_sanat_app/features/brands_viwe/presentation/single_brand.dart';
import 'package:main_abzar_sanat_app/features/login/presentation/phone_entry.dart';
import 'package:main_abzar_sanat_app/features/login/presentation/register_code.dart';
import 'package:main_abzar_sanat_app/features/login/presentation/splash_screen.dart';
import 'package:main_abzar_sanat_app/main_nav_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'features/store/presentation/all_product_store.dart';

void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, oriantation, screentype){
        return GetMaterialApp(
          title: 'AbzarSanat',
          theme: ThemeData(
            fontFamily: 'IRSans',
            primarySwatch: Colors.blue,
          ),
          getPages: [
            GetPage(name: '/home', page:() => MainNavPage()),
            GetPage(name: '/entery', page:() => PhoneEntry()),

            GetPage(name: '/listbrands', page: () => BrandsList() ),
            GetPage(name: '/productPage', page: () => ProductsPage(productData: [], Index: 0) ),

            GetPage(name: '/shopallproducts', page: () => AllProductsStore()),
            GetPage(name: '/allbrands', page: () => BrandsList()),


          ],
          home:  SplashScreen(),
        );
      },
    );
  }
}

