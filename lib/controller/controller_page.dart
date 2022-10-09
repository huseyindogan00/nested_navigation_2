import 'package:get/get.dart';

class ControllerPage extends GetxController {
  RxString _appTitle = ''.obs;

  String get appTitle => _appTitle.value;

  set appTitle(String value) {
    _appTitle.value = value;
  }
}
