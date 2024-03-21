import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/data/models/history_convertation.dart';
import 'package:task2/domain/convertation_interface.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc({required this.historyRepository}) : super(HistoryInitial()) {
    on<LoadHistoryConverting>((event, emit) async {
      try {
        final historyList = await historyRepository.getConvertationList();
        emit(HistoryLoaded(historyList: historyList));
      } catch (e) {
        emit(HistoryLoadFailure(exception: e));
      }
    });
  }

  final ConvertationHistoryInterface historyRepository;
}
