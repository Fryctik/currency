import 'package:task2/data/models/currency.dart';

abstract interface class CurrencyListInterface {
  Future<List<Currency>> getCurrencyList();
}