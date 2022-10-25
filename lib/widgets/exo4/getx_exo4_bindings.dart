import 'package:get/get.dart';
import 'package:test/widgets/exo4/getx_exo4_controller.dart';

class GetxExo4Bindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetxExo4Controller());
  }
}
