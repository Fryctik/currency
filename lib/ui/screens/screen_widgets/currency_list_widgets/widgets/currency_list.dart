import 'package:flutter/material.dart';
import 'package:task2/data/models/currency.dart';
import 'package:task2/ui/screens/screen_widgets/currency_list_widgets/widgets/currency_card.dart';

class CurrencyList extends StatelessWidget {
  const CurrencyList({
    super.key, required this.currencyList,
  });

  final List<Currency> currencyList;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList.builder(
          itemBuilder: (context, index) {
            return CurrencyCard(currency: currencyList[index],);
          },
          itemCount: currencyList.length,
        )
      ],
    );
  }
}