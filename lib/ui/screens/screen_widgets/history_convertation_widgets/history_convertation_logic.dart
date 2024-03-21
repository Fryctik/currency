import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:task2/domain/convertation_interface.dart';
import 'package:task2/ui/screens/screen_widgets/history_convertation_widgets/bloc/history_bloc.dart';
import 'package:task2/ui/screens/screen_widgets/history_convertation_widgets/widgets/history_list.dart';

@RoutePage()
class HistoryConvertationPage extends StatefulWidget {
  const HistoryConvertationPage({super.key});

  @override
  State<HistoryConvertationPage> createState() => _HistoryConvertationPageState();
}

class _HistoryConvertationPageState extends State<HistoryConvertationPage> {

  final _convertationHistoryBloc = HistoryBloc(
    historyRepository: GetIt.I<ConvertationHistoryInterface>(),
  );

  @override
  void initState() {
    _convertationHistoryBloc.add(LoadHistoryConverting());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder(
      bloc: _convertationHistoryBloc,
      builder: (context, state) {
        if(state is HistoryLoaded){
          return HistoryList(historyList: state.historyList, historyBloc: _convertationHistoryBloc,);
        }
        if(state is HistoryLoadFailure){

        }
        return Scaffold(
          body: Center(child:  CircularProgressIndicator(color: theme.iconTheme.color),),
        );
      },
    );
  }
}

