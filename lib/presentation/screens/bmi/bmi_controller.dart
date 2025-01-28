import 'package:get/get.dart';

class BmiController extends GetxController {
  final age = 20.obs;
  final weight = 50.obs;

  void increaseAge() => age.value++;
  void decreaseAge() {
    if (age.value > 0) {
      age.value--;
    }
  }

  void increaseWeight() => weight.value++;
  void decreaseWeight() {
    if (weight.value > 0) {
      weight.value--;
    }
  }
}