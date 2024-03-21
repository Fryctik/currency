import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/domain/theme_interface.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({required this.themeRepository})
     : super(ThemeState(Brightness.light )) {
      _checkSelectedTheme();
     }

  final ThemeInterface themeRepository;

  Future<void> setThemeBrightness(Brightness brightness) async {
    emit(ThemeState(brightness));
    await themeRepository.setDarkThemeSelect(brightness == Brightness.dark);
  }

  void _checkSelectedTheme (){
    try {
      final brightness = themeRepository.isDarkThemeSelected()
      ? Brightness.dark
      : Brightness.light;
    emit(ThemeState(brightness));
    } catch (e) {
      
    }
  }
}
