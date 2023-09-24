import 'package:flutter/material.dart';

class AppConfigUi {
  AppConfigUi._();
  static const MaterialColor _primarySwatch = MaterialColor(0XFF0066B0, {
    50 : Color(0XFF005c9e),
    100 : Color(0XFF00528d),
    200 : Color(0XFF00477b),
    300 : Color(0XFF003d6a),
    400 : Color(0XFF003358),
    500 : Color(0XFF003358),
    600 : Color(0XFF002946),
    700 : Color(0XFF001f35),
    800 : Color(0XFF001423),
    900 : Color(0XFF000a12),
  });
  static final ThemeData theme = ThemeData(
    primarySwatch: _primarySwatch,
    primaryColor: const Color(0XFF0066B0),
    primaryColorLight: const Color(0XFF219FFF),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.grey), //cor da borda quando o campo não esta ativo
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.grey), //cor da borda quando o campo esta ativo
      ),
      labelStyle: TextStyle(
        color: Color.fromARGB(255, 0, 0, 0), //cor do label text
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10), //dobradura da borda -- elevatedButton
        ),
      ),
    ),
  );
}
