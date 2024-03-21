import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task2/ui/routes/routers.dart';
import 'package:task2/ui/screens/screen_widgets/general_widgets/appBar/currency_app_bar.dart';
import 'package:task2/ui/screens/screen_widgets/general_widgets/drawer/drawer.dart';

@RoutePage()
class ScreenLogic extends StatefulWidget {
  const ScreenLogic({super.key});

  @override
  State<ScreenLogic> createState() => _ScreenLogicState();
}

class _ScreenLogicState extends State<ScreenLogic> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        CurrencyListRoute(),
        DeveloperInformationRoute(),
        HistoryConvertationRoute()
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: CurrencyAppBar(),
          drawer: CurrencyDrawer(tabsRouter: tabsRouter,),
          body: child,
        );
      }, 
    );
  }
}