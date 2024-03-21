part of 'currency_list_bloc.dart';

abstract class CurrencyListState {}

class CurrencyListInitial extends CurrencyListState {}

class CurrencyListLoaded extends CurrencyListState {

  final List<Currency> currencyList;

  CurrencyListLoaded({required this.currencyList});
}

class CurrencyListLoadingFailure extends CurrencyListState {}

class NumberConvertation extends CurrencyListState {
  final double number;

  NumberConvertation({required this.number});
}