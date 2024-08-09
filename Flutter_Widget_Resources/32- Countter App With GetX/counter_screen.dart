import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'counter_screen_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  CounterScreenController counterScreenController = Get.put(CounterScreenController(),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App With GetX"),),
      body:  Center(
        child: Obx(()=>Text(counterScreenController.number.toString(),),),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        counterScreenController.increment();
        //setState(() {

        //});
      },child: const Icon(Icons.add),),
    );
  }
}
