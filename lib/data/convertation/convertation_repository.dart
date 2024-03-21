import 'package:task2/domain/convertation_interface.dart';

class ConvertationRepository implements ConvertationInterface {
  @override
  double convertationCurrency(String numberStr, double value) {
    double number = double.parse(numberStr);
    return number * value;
  }
}