import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 1. 테스트 테마 설정 -> 전역 함수로
TextTheme textTheme() {
  return TextTheme(
    displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    displayMedium: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}

// 2. 아이콘 테마 설정
IconThemeData iconTheme() {
  return const IconThemeData(color: Colors.black);
}

// 3. appBar 테마 설정
AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    iconTheme: iconTheme(),
    titleTextStyle: GoogleFonts.nanumGothic(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.black
    )
  );
}

// 4. bottomNavigation 테마 설정
BottomNavigationBarThemeData bottomNavigationBarThemeData() {
  return const BottomNavigationBarThemeData(
    selectedItemColor: Colors.orange,
    unselectedItemColor: Colors.black54,
    showUnselectedLabels: true,
  );
}

// 5. Theme Data 테마 설정 - 대통합
ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: bottomNavigationBarThemeData(),
    primarySwatch: Colors.orange,
  );
}