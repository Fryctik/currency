abstract interface class ThemeInterface {
  bool isDarkThemeSelected();
  Future<void> setDarkThemeSelect(bool selected);
}