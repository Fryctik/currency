import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CurrencyDrawer extends StatefulWidget {
  const CurrencyDrawer({super.key, required this.tabsRouter});

  final TabsRouter tabsRouter;

  @override
  State<CurrencyDrawer> createState() => _CurrencyDrawerState();
}

class _CurrencyDrawerState extends State<CurrencyDrawer> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      backgroundColor: theme.primaryColor,
      child: ListView(
        children: [
          ListTile(
            onTap: (){
              Navigator.pop(context);
              widget.tabsRouter.setActiveIndex(0);
            },
            title: Text('Список валют', style: theme.primaryTextTheme.titleMedium),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              widget.tabsRouter.setActiveIndex(1);
            },
            title: Text('О приложении', style: theme.primaryTextTheme.titleMedium,),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              widget.tabsRouter.setActiveIndex(2);
            },
            title: Text('История конвертаций', style: theme.primaryTextTheme.titleMedium),
          )
        ],
      ),
    );
  }
}