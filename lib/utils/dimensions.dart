import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double scrennWidth = Get.context!.width;
  static double pageView = screenHeight / 2.64; //320
  static double pageViewContainer = screenHeight / 3.87; //220
  static double pageViewTextContainer = screenHeight / 7.1; //120
//dynamic height padding and margin
  static double height10 = screenHeight / 85.2;
  static double height15 = screenHeight / 56.8;
  static double height20 = screenHeight / 42.6;
  static double height30 = screenHeight / 28.4;
  static double height45 = screenHeight / 18.93;
  static double height55 = screenHeight / 15.49;
//dynamic width padding and margin
  static double width10 = screenHeight / 85.2;
  static double width15 = screenHeight / 56.8;
  static double width20 = screenHeight / 42.6;
  static double width30 = screenHeight / 28.4;
  static double width45 = screenHeight / 18.93;
//font
  static double font20 = screenHeight / 42.6;
  static double font26 = screenHeight / 32.769;
  static double font16 = screenHeight / 53.25;

//radius
  static double radius30 = screenHeight / 28.4;
  static double radius20 = screenHeight / 42.6;
  static double radius15 = screenHeight / 56.8;

//icon Size
  static double iconSize24 = screenHeight / 35.5;
  static double iconSize16 = screenHeight / 53.25;

//list view size
  static double listViewImgSize = scrennWidth / 3.425; //120
  static double listViewTextContSize = scrennWidth / 4.11; //100

//popular food
  static double popularFoodImgSize = screenHeight / 2.30; //370

  //bottom height
  static double bottomHeightBar = screenHeight / 6.76; //320
}
