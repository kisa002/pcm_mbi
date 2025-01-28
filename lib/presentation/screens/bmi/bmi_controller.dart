import 'package:get/get.dart';

class BmiController extends GetxController {
  final age = 20.obs;
  final weight = 50.obs;
  final height = 175.0.obs;

  final minHeight = 50.0;
  final maxHeight = 220.0;

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

  void setHeight(double value) => height.value = value;
}