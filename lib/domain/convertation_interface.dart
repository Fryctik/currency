import 'package:task2/data/models/history_convertation.dart';

abstract interface class ConvertationInterface {
  double convertationCurrency (String numberStr, double value);
}

abstract interface class ConvertationHistoryInterface {
  Future<List<HistoryConvertation>> getConvertationList();
  Future<void> addConvertation (double resultNumber, String inputNumber, String charCode);
}