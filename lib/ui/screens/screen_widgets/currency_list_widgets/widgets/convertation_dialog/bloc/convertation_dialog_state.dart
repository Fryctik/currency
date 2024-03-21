part of 'convertation_dialog_bloc.dart';

@immutable
sealed class ConvertationDialogState {}

final class ConvertationDialogInitial extends ConvertationDialogState {}

final class ConvertatedNumber extends ConvertationDialogState {
  final double resultNumber;

  ConvertatedNumber({required this.resultNumber});
}

final class ConvertationFailure extends ConvertationDialogState {
  final Object? exception;

  ConvertationFailure({required this.exception});
}
