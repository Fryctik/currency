import 'package:flutter/material.dart';
import 'package:task2/data/models/history_convertation.dart';
import 'package:task2/ui/screens/screen_widgets/history_convertation_widgets/bloc/history_bloc.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({
    super.key, required this.historyList, required this.historyBloc,
  });

  final List<HistoryConvertation> historyList;
  final HistoryBloc historyBloc;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RefreshIndicator(
      onRefresh: () async {
        historyBloc.add(LoadHistoryConverting());
      },
      child: Padding(
        padding: EdgeInsets.only(top: 5),
        child: CustomScrollView(
          slivers: [
            SliverList.builder(
              itemCount: historyList.length,
              itemBuilder: (context, index) {
                final convertation = historyList[index];
                return Container(
                  margin: const EdgeInsets.fromLTRB(3, 0, 3, 3),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: theme.cardColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text(convertation.charCode, style: theme.primaryTextTheme.displayMedium,),
                            Text('${convertation.inputValue}', style: theme.primaryTextTheme.displayLarge)
                          ],
                        ),
                      ),
                      Text('=', style: theme.primaryTextTheme.displayLarge),
                      SizedBox(
                        child: Column(
                          children: [
                            Text('RUB', style: theme.primaryTextTheme.displayMedium,),
                            Text('${convertation.resultNumber}', style: theme.primaryTextTheme.displayLarge)
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      )
    );
  }
}