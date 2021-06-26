import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic/shared/constants/constants.dart';
import 'package:hexcolor/hexcolor.dart';

// Our light/Primary Theme
ThemeData lightThemeData() {
  return ThemeData(
    primarySwatch: primarySwatchColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      color: Colors.white,
      elevation: 0,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      elevation: 25,
      backgroundColor: Colors.white,
    ),
    fontFamily: 'BigShouldersStencilDisplay',
  );
}

// Dark Them
ThemeData darkThemeData() {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: HexColor('333739'),
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: HexColor('333739'),
      elevation: 0,
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: HexColor('333739'),
        statusBarIconBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      elevation: 25,
      backgroundColor: HexColor('333739'),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  );
}
