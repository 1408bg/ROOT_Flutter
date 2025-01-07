import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:root/components/root_colors.dart';
import 'package:root/presentation/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Pretendard',
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: RootColors.gray600,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: RootColors.gray600,
          ),
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
