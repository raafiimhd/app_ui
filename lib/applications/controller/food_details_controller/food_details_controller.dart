import 'package:get/get.dart';

class FoodDetailsController extends GetxController {
  var quantity = 0.obs;

  void increaseQuantity() {
    quantity++;
  }

  void decreaseQuantity() {
    quantity--;
  }
}
