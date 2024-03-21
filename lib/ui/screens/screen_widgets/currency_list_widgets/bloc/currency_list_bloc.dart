import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/data/models/currency.dart';
import 'package:task2/domain/currency_list_interface.dart';

part 'currency_list_event.dart';
part 'currency_list_state.dart';

class CurrencyListBloc extends Bloc<CurrencyListEvent, CurrencyListState> {
  CurrencyListBloc({required this.currencyRepository}) : super(CurrencyListInitial()) {
    on<LoadCurrencyList>((event, emit) async {
      try{
        final currencyList = await currencyRepository.getCurrencyList();
        emit(CurrencyListLoaded(currencyList: currencyList));
      }catch(e){
        emit(CurrencyListLoadingFailure());
      }
    });
  }
  final CurrencyListInterface currencyRepository;
}
