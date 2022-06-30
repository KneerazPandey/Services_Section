import 'package:get/get.dart';

class ServicesController extends GetxController {
  final _hoverServices = 0.5.obs; // 0.5 means no services is hovered

  get hoverServices {
    return _hoverServices.value;
  }

  void setHoverServices(newHoverServices) {
    _hoverServices.value = newHoverServices;
  }
}
