import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/widgets/exo4/getx_exo4_controller.dart';

class GetxExo4View extends GetView<GetxExo4Controller> {
  const GetxExo4View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.incrementCounter();
        controller.addWordList();
      }),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text(
                  "Nbr de fois que j'ai cliquer : ${controller.count.value}",
                  style: const TextStyle(fontSize: 35),
                )),
            Obx(() => Row(
                  children: List.generate(controller.wordList.length, (index) {
                    return Text(
                      "${controller.wordList[index]}, ",
                      style: const TextStyle(fontSize: 30),
                    );
                  }),
                ))
          ],
        ),
      ),
    );
  }
}
