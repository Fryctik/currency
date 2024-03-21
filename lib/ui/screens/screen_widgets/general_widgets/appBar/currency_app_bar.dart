import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/ui/screens/screen_widgets/general_widgets/appBar/cubit/theme_cubit.dart';

class CurrencyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CurrencyAppBar({super.key}) : preferredSize = const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);
    return AppBar(
      title: Text('Конвертер', style: theme.primaryTextTheme.titleLarge),
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
      iconTheme: IconThemeData(color: theme.iconTheme.color),
      actions: [
        IconButton(
          onPressed: (){
            context.read<ThemeCubit>().setThemeBrightness(
              theme.brightness == Brightness.light ?  Brightness.dark : Brightness.light,
            );
          }, 
          icon: (theme.brightness == Brightness.light ? Icon(Icons.nightlight_round) : Icon(Icons.sunny))
        )
      ],
    );
  }
}