import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:task2/data/models/currency.dart';
import 'package:task2/domain/convertation_interface.dart';
import 'package:task2/ui/screens/screen_widgets/currency_list_widgets/widgets/convertation_dialog/bloc/convertation_dialog_bloc.dart';

class ConvertDialog extends StatefulWidget {
  const ConvertDialog({
    super.key,
    required this.currency,
  });

  final Currency currency;

  @override
  State<ConvertDialog> createState() => _ConvertDialogState();
}

class _ConvertDialogState extends State<ConvertDialog> {
  String inputNumStr = '';

  final _converterBloc = ConvertationDialogBloc(
    convertationRepository: GetIt.I<ConvertationInterface>(),
    historyRepository: GetIt.I<ConvertationHistoryInterface>(),
    );

  @override
  Widget build(BuildContext context) {
    Currency currency = widget.currency;
    final theme = Theme.of(context);
    return AlertDialog(
      title: Text('Конвертация валюты',
          style: theme.primaryTextTheme.displayMedium),
      backgroundColor: theme.primaryColor,
      actions: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currency.charCode,
              style: theme.primaryTextTheme.displayLarge,
            ),
            TextFormField(
              cursorColor: theme.iconTheme.color!,
              maxLength: 30,
              style: TextStyle(color: theme.iconTheme.color!),
              decoration: InputDecoration(
                  labelText: 'Введите сумму',
                  labelStyle: theme.primaryTextTheme.titleMedium,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: theme.iconTheme.color!)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: theme.iconTheme.color!)),
                  counterStyle: TextStyle(color: theme.iconTheme.color!)),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(
                  '[0-9.]',
                )),
              ],
              onChanged: (text) {
                inputNumStr = text;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('RUB',
                    style: theme.primaryTextTheme.displayLarge
                  ),
                  BlocBuilder(
                    bloc: _converterBloc,
                    builder: (context, state) {
                      if(state is ConvertatedNumber){
                        return NumberContainer(widget: widget, text: '${state.resultNumber}',);
                      }
                      if(state is ConvertationFailure){
                        return NumberContainer(widget: widget, text: 'Произошла ошибка: ${state.exception}',);
                      }
                      return NumberContainer(widget: widget, text: '0.0',);
                    },
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: ()  {
                    _converterBloc.add(ConvertationNumber(inputNumber: inputNumStr, currency: currency));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(theme.primaryColor)),
                  child: Text(
                    'Конвертировать',
                    style: theme.primaryTextTheme.titleMedium,
                  )
                ),
              )
            )
          ],
        )
      ],
    );
  }
}

class NumberContainer extends StatelessWidget {
  const NumberContainer({
    super.key,
    required this.widget, 
    required this.text,
  });

  final ConvertDialog widget;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: Text(
        text,
        style: theme.primaryTextTheme.displayLarge
      )
    );
  }
}
