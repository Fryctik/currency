import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:task2/domain/theme_interface.dart';
import 'package:task2/ui/routes/routers.dart';
import 'package:task2/ui/screens/screen_widgets/general_widgets/appBar/cubit/theme_cubit.dart';
import 'package:task2/ui/theme/theme.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  final _router = AppRouter();
  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(themeRepository: GetIt.I<ThemeInterface>())
        )
      ], 
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            theme: state.brightness == Brightness.dark ?  dartTheme : lightTheme,
            routerConfig: _router.config(),
            debugShowCheckedModeBanner: false,
          );
        },
      )
    );
  }
}
