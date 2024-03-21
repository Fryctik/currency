import 'package:shared_preferences/shared_preferences.dart';
import 'package:task2/domain/theme_interface.dart';

class ThemeRepository implements ThemeInterface {

  final SharedPreferences preferences;

  ThemeRepository({required this.preferences});
  static const _isDarkThemeSelectedKey = 'dark_theme_selected';

  @override
  bool isDarkThemeSelected() {
    final selected = preferences.getBool(_isDarkThemeSelectedKey);
    return selected ?? false;
  }

  @override
  Future<void> setDarkThemeSelect(bool selected) async {
    await preferences.setBool(_isDarkThemeSelectedKey, selected);
  }

}