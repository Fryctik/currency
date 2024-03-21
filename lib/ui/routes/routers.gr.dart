// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routers.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CurrencyListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CurrencyListLogic(),
      );
    },
    DeveloperInformationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeveloperInformationScreen(),
      );
    },
    HistoryConvertationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HistoryConvertationPage(),
      );
    },
    RouteLogic.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScreenLogic(),
      );
    },
  };
}

/// generated route for
/// [CurrencyListRoute]
class CurrencyListRoute extends PageRouteInfo<void> {
  const CurrencyListRoute({List<PageRouteInfo>? children})
      : super(
          CurrencyListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CurrencyListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DeveloperInformationScreen]
class DeveloperInformationRoute extends PageRouteInfo<void> {
  const DeveloperInformationRoute({List<PageRouteInfo>? children})
      : super(
          DeveloperInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeveloperInformationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HistoryConvertationPage]
class HistoryConvertationRoute extends PageRouteInfo<void> {
  const HistoryConvertationRoute({List<PageRouteInfo>? children})
      : super(
          HistoryConvertationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryConvertationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ScreenLogic]
class RouteLogic extends PageRouteInfo<void> {
  const RouteLogic({List<PageRouteInfo>? children})
      : super(
          RouteLogic.name,
          initialChildren: children,
        );

  static const String name = 'RouteLogic';

  static const PageInfo<void> page = PageInfo<void>(name);
}
