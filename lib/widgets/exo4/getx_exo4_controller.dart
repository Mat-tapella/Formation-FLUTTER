import 'package:get/get.dart';

class GetxExo4Controller extends GetxController {
  GetxExo4Controller();

  Rx<int> count = 0.obs; //.obs valeur variable devient observable
  List<String> wordList = ["mots1", "mot2", "mot3"].obs;

  void addWordList() {
    wordList.add("coucou");
  }

  void incrementCounter() {
    count.value++; //.value a ajouter avec Rx<>
    print(count.value);
  }
}
