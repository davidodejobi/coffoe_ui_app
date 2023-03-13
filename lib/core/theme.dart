import 'package:coffoe_ui_app/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppTheme extends ChangeNotifier {
  static ThemeData light() {
    return ThemeData.light().copyWith(
      useMaterial3: true,
      iconTheme: const IconThemeData(
        color: AppColor.kLightPrimaryColor,
      ),
      scaffoldBackgroundColor: AppColor.kLightPrimaryColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          foregroundColor: const Color(0xFFFDFDFC),
          backgroundColor:
              AppColor.kLightSecondaryColor, // foreground (text) color
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        unselectedLabelStyle: TextStyle(
          color: AppColor.kLightGreyTextColor,
          fontSize: 10.0.sp,
          fontWeight: FontWeight.w500,
        ),
        selectedLabelStyle: TextStyle(
          color: AppColor.kLightSecondaryColor,
          fontSize: 10.0.sp,
          fontWeight: FontWeight.w500,
        ),
        selectedItemColor: AppColor.kLightSecondaryColor,
        unselectedItemColor: AppColor.kLightGreyTextColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        enableFeedback: true,
        type: BottomNavigationBarType.shifting,
        elevation: 0,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),
      appBarTheme: const AppBarTheme(
        color: AppColor.kLightPrimaryColor,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          // fontWeight: FontWeight.w700,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 60.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kLightTextColor,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          fontSize: 36.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kLightTextColor,
          fontWeight: FontWeight.normal,
        ),
        displaySmall: TextStyle(
          fontSize: 30.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kLightTextColor,
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          fontSize: 26.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kLightTextColor,
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          fontSize: 22.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kLightTextColor,
          fontWeight: FontWeight.normal,
        ),
        titleLarge: TextStyle(
          fontSize: 18.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kLightTextColor,
          fontWeight: FontWeight.normal,
        ),
        bodyLarge: TextStyle(
          fontSize: 16.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kLightTextColor,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kLightTextColor,
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          fontSize: 12.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kLightTextColor,
          fontWeight: FontWeight.w300,
        ),
        bodySmall: TextStyle(
          fontSize: 10.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kLightTextColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData.dark().copyWith(
      useMaterial3: true,
      iconTheme: const IconThemeData(
        color: AppColor.kDarkPrimaryColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color(0xFFF2F4F7),
          backgroundColor: AppColor.kDarkPrimaryColor
              .withOpacity(0.8), // foreground (text) color
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColor.kDarkBackgroundColor,
        selectedItemColor: AppColor.kDarkPrimaryColor,
        unselectedItemColor: AppColor.kDarkGreyColor,
        selectedLabelStyle: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          color: AppColor.kDarkGreyColor,
          fontSize: 8,
          fontWeight: FontWeight.w500,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
      scaffoldBackgroundColor: AppColor.kDarkBackgroundColor,
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),
      appBarTheme: const AppBarTheme(
        color: AppColor.kDarkPrimaryColor,
        elevation: 0,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 72.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kDarkTextColor,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          fontSize: 36.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kDarkTextColor,
          fontWeight: FontWeight.normal,
        ),
        displaySmall: TextStyle(
          fontSize: 30.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kDarkTextColor,
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          fontSize: 26.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kDarkTextColor,
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          fontSize: 22.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kDarkTextColor,
          fontWeight: FontWeight.normal,
        ),
        titleLarge: TextStyle(
          fontSize: 18.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kDarkTextColor,
          fontWeight: FontWeight.normal,
        ),
        bodyLarge: TextStyle(
          fontSize: 16.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kDarkTextColor,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kDarkTextColor,
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          fontSize: 12.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kDarkTextColor,
          fontWeight: FontWeight.w300,
        ),
        bodySmall: TextStyle(
          fontSize: 10.0.sp,
          fontFamily: 'Poppins',
          color: AppColor.kDarkTextColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  // static bool _isDarkTheme = ThemeMode.system == ThemeMode.dark ? true : false;
  static bool _isDarkTheme = true;
  bool get isDarkTheme => _isDarkTheme;

  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}

final appThemeProvider = ChangeNotifierProvider.autoDispose<AppTheme>((ref) {
  return AppTheme();
});
