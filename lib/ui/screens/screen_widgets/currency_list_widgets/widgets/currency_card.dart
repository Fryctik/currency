import 'package:flutter/material.dart';
import 'package:task2/data/models/currency.dart';
import 'package:task2/ui/screens/screen_widgets/currency_list_widgets/widgets/convertation_dialog/convert_dialog.dart';

class CurrencyCard extends StatelessWidget {
  const CurrencyCard({
    super.key, required this.currency,
  });

  final Currency currency;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(3, 0, 3, 3),
      padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: theme.cardColor,
      ),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return ConvertDialog(currency: currency,); 
            }
          );
        },
        child: Row(
          children: [
            Text(currency.charCode, style: theme.primaryTextTheme.displayMedium,),
            Container(
              width: 250,
              padding: const EdgeInsets.only(left: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(currency.name, style: theme.primaryTextTheme.displayLarge,),
                  Text('${currency.value}', style: theme.primaryTextTheme.displayLarge,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}