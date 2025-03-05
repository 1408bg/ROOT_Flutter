import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:root/components/root_colors.dart';
import 'package:root/presentation/user/login_screen.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
          appBarTheme: AppBarTheme(
            backgroundColor: RootColors.gray600,
          ),
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
