import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  primaryTextTheme: const TextTheme(
    displayMedium: TextStyle(
      color: Color.fromARGB(255, 39, 39, 39),
      fontSize: 20,
      fontWeight: FontWeight.bold
    ),
    displayLarge: TextStyle(
      color: Color.fromARGB(255, 66, 66, 66),
      fontSize: 17
    ),
    titleMedium: TextStyle(
      color: Color.fromARGB(255, 66, 66, 66)
    ),
    titleLarge: TextStyle(
      color: Color.fromARGB(255, 39, 39, 39)
    )
  ),
  primaryColor: Colors.white,
  colorScheme: ColorScheme.fromSeed(
    seedColor:const Color.fromARGB(255, 39, 39, 39), 
    brightness: Brightness.light  
  ),
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  cardColor:const Color.fromARGB(255, 240, 240, 240),
  iconTheme: const IconThemeData(
    color: Color.fromARGB(255, 39, 39, 39)
  )
);

final dartTheme = ThemeData(
  primaryTextTheme: const TextTheme(
    displayMedium: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold
    ),
    displayLarge: TextStyle(
      color: Colors.white,
      fontSize: 17
    ),
    titleMedium: TextStyle(
      color: Colors.white
    ),
    titleLarge: TextStyle(
      color: Colors.white
    )
  ),
  primaryColor: const Color.fromARGB(255, 39, 39, 39),
  colorScheme: ColorScheme.fromSeed(
    seedColor:const Color.fromARGB(255, 39, 39, 39), 
    brightness: Brightness.dark  
  ),
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color.fromARGB(255, 39, 39, 39),
  cardColor:const Color.fromARGB(255, 66, 66, 66),
  iconTheme: const IconThemeData(
    color: Colors.white
  )
);