import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:realm/realm.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task2/app.dart';
import 'package:task2/data/convertation/convertation_history_repositories.dart';
import 'package:task2/data/convertation/convertation_repository.dart';
import 'package:task2/data/api/currency_list_repositories.dart';
import 'package:task2/data/models/history_convertation.dart';
import 'package:task2/data/theme/theme_repository.dart';
import 'package:task2/domain/convertation_interface.dart';
import 'package:task2/domain/currency_list_interface.dart';
import 'package:task2/domain/theme_interface.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  
  final config = Configuration.local([HistoryConvertation.schema]);
  final realm = Realm(config);
  final prefs = await SharedPreferences.getInstance();

  GetIt.I.registerLazySingleton<CurrencyListInterface>(() => CurrencyListRepositories(),);
  GetIt.I.registerLazySingleton<ConvertationInterface>(() => ConvertationRepository());
  GetIt.I.registerLazySingleton<ConvertationHistoryInterface>(() => ConvertationHistoryRepositories(realm: realm));
  GetIt.I.registerLazySingleton<ThemeInterface>(() => ThemeRepository(preferences: prefs));

  runApp(const CurrencyConverter());
}




