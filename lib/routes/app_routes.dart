import 'package:flutter/material.dart';
import 'package:arcraftlastfinal/presentation/splash_screen/splash_screen.dart';
import 'package:arcraftlastfinal/presentation/sofacam_screen/sofacam_screen.dart';
import 'package:arcraftlastfinal/presentation/buildingcam_screen/buildingcam_screen.dart';
import 'package:arcraftlastfinal/presentation/register_screen/register_screen.dart';
import 'package:arcraftlastfinal/presentation/tvcam_screen/tvcam_screen.dart';
import 'package:arcraftlastfinal/presentation/lampcam_screen/lampcam_screen.dart';
import 'package:arcraftlastfinal/presentation/couchcam_screen/couchcam_screen.dart';
import 'package:arcraftlastfinal/presentation/bedcam_screen/bedcam_screen.dart';
import 'package:arcraftlastfinal/presentation/setcam_screen/setcam_screen.dart';
import 'package:arcraftlastfinal/presentation/home_screen/home_screen.dart';
import 'package:arcraftlastfinal/presentation/login_register_screen/login_register_screen.dart';
import 'package:arcraftlastfinal/presentation/products_tab_container_screen/products_tab_container_screen.dart';
import 'package:arcraftlastfinal/presentation/sofa_screen/sofa_screen.dart';
import 'package:arcraftlastfinal/presentation/tv_screen/tv_screen.dart';
import 'package:arcraftlastfinal/presentation/lamp_screen/lamp_screen.dart';
import 'package:arcraftlastfinal/presentation/couch_screen/couch_screen.dart';
import 'package:arcraftlastfinal/presentation/bed_screen/bed_screen.dart';
import 'package:arcraftlastfinal/presentation/set_screen/set_screen.dart';
import 'package:arcraftlastfinal/presentation/building_screen/building_screen.dart';
import 'package:arcraftlastfinal/presentation/login_screen/login_screen.dart';
import 'package:arcraftlastfinal/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String sofacamScreen = '/sofacam_screen';

  static const String buildingcamScreen = '/buildingcam_screen';

  static const String registerScreen = '/register_screen';

  static const String tvcamScreen = '/tvcam_screen';

  static const String lampcamScreen = '/lampcam_screen';

  static const String couchcamScreen = '/couchcam_screen';

  static const String bedcamScreen = '/bedcam_screen';

  static const String setcamScreen = '/setcam_screen';

  static const String homeScreen = '/home_screen';

  static const String loginRegisterScreen = '/login_register_screen';

  static const String productsPage = '/products_page';

  static const String productsTabContainerScreen =
      '/products_tab_container_screen';

  static const String sofaScreen = '/sofa_screen';

  static const String tvScreen = '/tv_screen';

  static const String lampScreen = '/lamp_screen';

  static const String couchScreen = '/couch_screen';

  static const String bedScreen = '/bed_screen';

  static const String setScreen = '/set_screen';

  static const String buildingScreen = '/building_screen';

  static const String loginScreen = '/login_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    sofacamScreen: (context) => SofacamScreen(),
    buildingcamScreen: (context) => BuildingcamScreen(),
    registerScreen: (context) => RegisterScreen(),
    tvcamScreen: (context) => TvcamScreen(),
    lampcamScreen: (context) => LampcamScreen(),
    couchcamScreen: (context) => CouchcamScreen(),
    bedcamScreen: (context) => BedcamScreen(),
    setcamScreen: (context) => SetcamScreen(),
    homeScreen: (context) => HomeScreen(),
    loginRegisterScreen: (context) => LoginRegisterScreen(),
    productsTabContainerScreen: (context) => ProductsTabContainerScreen(),
    sofaScreen: (context) => SofaScreen(),
    tvScreen: (context) => TvScreen(),
    lampScreen: (context) => LampScreen(),
    couchScreen: (context) => CouchScreen(),
    bedScreen: (context) => BedScreen(),
    setScreen: (context) => SetScreen(),
    buildingScreen: (context) => BuildingScreen(),
    loginScreen: (context) => LoginScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
