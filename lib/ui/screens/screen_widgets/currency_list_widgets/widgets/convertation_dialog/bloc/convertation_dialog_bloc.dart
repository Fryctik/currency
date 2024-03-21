
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/data/models/currency.dart';
import 'package:task2/domain/convertation_interface.dart';

part 'convertation_dialog_event.dart';
part 'convertation_dialog_state.dart';

class ConvertationDialogBloc extends Bloc<ConvertationDialogEvent, ConvertationDialogState> {
  ConvertationDialogBloc({required this.convertationRepository, required this.historyRepository}) : super(ConvertationDialogInitial()) {
    on<ConvertationNumber>((event, emit) {
      try {
        double resultNumber = convertationRepository.convertationCurrency(event.inputNumber, event.currency.value);
        historyRepository.addConvertation( resultNumber,  event.inputNumber, event.currency.charCode);
        emit(ConvertatedNumber(resultNumber: resultNumber));
      } catch (e) {
        emit(ConvertationFailure(exception: e));
      }
    });
  }

  final ConvertationHistoryInterface historyRepository;
  final ConvertationInterface convertationRepository;
}
