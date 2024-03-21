part of 'history_bloc.dart';


sealed class HistoryState {}

final class HistoryInitial extends HistoryState {}

final class HistoryLoaded extends HistoryState {
  List<HistoryConvertation> historyList;

  HistoryLoaded({required this.historyList});
}

final class HistoryLoadFailure extends HistoryState {
  final Object exception;

  HistoryLoadFailure({required this.exception});
}
