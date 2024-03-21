part of 'convertation_dialog_bloc.dart';

@immutable
sealed class ConvertationDialogEvent {}

final class ConvertationNumber extends ConvertationDialogEvent {
  final String inputNumber;
  final Currency currency;

  ConvertationNumber({required this.inputNumber, required this.currency});
}