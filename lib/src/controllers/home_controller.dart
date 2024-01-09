import 'package:get/get.dart';
import 'package:ravi_calculator/src/constant/buttons_constant.dart';

class HomeController extends GetxController {
  RxString result = '0'.obs;

  write(givenValue) {
    if (result.value == "0") {
      result.value = '$givenValue';
    } else {
      result.value = '${result.value}$givenValue';
    }
  }

  clear() {
    result.value = '0';
  }

  equal() {
    for (var i in operators) {
      if (result.value.contains(i)) {
        List elements = result.value.split(i);
        int a = int.parse(elements[0]);
        int b = int.parse(elements[1]);

        if (i == "+") {
          result.value = '${a + b}';
        } else if (i == "-") {
          result.value = '${a - b}';
        } else if (i == "*") {
          result.value = '${a * b}';
        } else if (i == '/') {
          result.value = '${a / b}';
        } else {
          result.value = 'Error';
        }

        break;
      }
    }
  }
}
