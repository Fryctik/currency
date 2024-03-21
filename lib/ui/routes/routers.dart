import 'package:auto_route/auto_route.dart';
import 'package:task2/ui/screens/screen_widgets/currency_list_widgets/currenci_list_logic.dart';
import 'package:task2/ui/screens/screen_widgets/develop_information_widgets/developer_information_screen.dart';
import 'package:task2/ui/screens/screen_widgets/history_convertation_widgets/history_convertation_logic.dart';
import 'package:task2/ui/screens/screen_logic.dart';

part 'routers.gr.dart';            
              
@AutoRouterConfig()      
class AppRouter extends _$AppRouter {      
    
  @override      
  List<AutoRoute> get routes => [      
    AutoRoute(
      page: RouteLogic.page,
      path: '/',
      children: [
        AutoRoute(
          page: CurrencyListRoute.page,
          path: 'CurrencyList',
        ),
        AutoRoute(
          page: DeveloperInformationRoute.page,
          path: 'DeveloperInfo' 
        ),
        AutoRoute(
          page: HistoryConvertationRoute.page,
          path: 'HistoryConvertation' 
        ),
      ]
    )
   ];
 }   