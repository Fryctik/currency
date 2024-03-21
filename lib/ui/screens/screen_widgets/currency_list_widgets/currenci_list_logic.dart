import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:task2/domain/currency_list_interface.dart';
import 'package:task2/ui/screens/screen_widgets/currency_list_widgets/bloc/currency_list_bloc.dart';
import 'package:task2/ui/screens/screen_widgets/currency_list_widgets/widgets/currency_list.dart';

@RoutePage()
class CurrencyListLogic extends StatefulWidget {
  const CurrencyListLogic({super.key});

  @override
  State<CurrencyListLogic> createState() => _CurrencyListLogic();
}

class _CurrencyListLogic extends State<CurrencyListLogic> {

  final _currencyListBloc = CurrencyListBloc(currencyRepository: GetIt.I<CurrencyListInterface>());

  @override
  void initState() {
    _currencyListBloc.add(LoadCurrencyList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder(
      bloc: _currencyListBloc,
      builder: (context, state) {
        if(state is CurrencyListLoaded){
          return CurrencyList(currencyList: state.currencyList);
        }
        if(state is CurrencyListLoadingFailure){
          return Scaffold(
            body: Center(child:  CircularProgressIndicator(color: theme.iconTheme.color),),
          );
        }
        return Scaffold(
          body: Center(child:  CircularProgressIndicator(color: theme.iconTheme.color),),
        );
      },
    );
  }
}