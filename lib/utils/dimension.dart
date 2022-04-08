import 'package:get/get.dart';

class Dimension {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.64;
  static double pageViewController = screenHeight / 3.84;
  static double pageViewTextController = screenHeight / 7.03;

  //Dynamic height  padding and margin
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.4;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.75;

  //Dynamic width  padding and margin
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.4;
  static double width30 = screenHeight / 28.13;
  static double width45 = screenHeight / 18.75;

//Dynamic font  sizes
  static double font15 = screenHeight / 56.27;
  static double font20 = screenHeight / 42.2;

//Dynamic radius  sizes
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

//Dynamic icon  sizes
  static double iconSize24 = screenHeight / 35.17;
}
