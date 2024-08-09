import 'package:get/get.dart';

class CounterScreenController extends GetxController{

  RxInt number = 0.obs;


  void increment(){
    number++;
  }
}