import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DeveloperInformationScreen extends StatelessWidget {
  const DeveloperInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(3, 10, 3, 0),
            child: Column(
              children: [
                Container(  
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(3, 5, 3, 5),
                  decoration: BoxDecoration(
                    color: theme.cardColor,
                    borderRadius: BorderRadius.circular(7) 
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('О приложении: ', style: theme.primaryTextTheme.displayMedium),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Приложение разработанно в рамках подготовки к региональному чемпионату по дисциплине мобильной разработки.'
                          ' Приложение разработал студент 623 группы Томского Техникума Информационных Технологий, Трошин Максим Ростиславович.',
                          style: theme.primaryTextTheme.displayLarge,
                          textAlign: TextAlign.justify
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10).copyWith(bottom: 10),
                  padding: const EdgeInsets.fromLTRB(3, 5, 3, 5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: theme.cardColor,
                    borderRadius: BorderRadius.circular(7) 
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Использовались следующие библеотеки:', style: theme.primaryTextTheme.displayMedium,),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'cupertino_icons версии 1.0.6, flutter_native_splash: версии 2.3.10,'
                          ' flutter_bloc: версии 8.1.4, xml версии 6.5.0, windows1251: версии 2.0.0, http: версии 1.2.1',
                          style: theme.primaryTextTheme.displayLarge,
                          textAlign: TextAlign.justify
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
    
  }
}