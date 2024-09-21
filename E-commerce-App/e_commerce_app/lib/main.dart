import 'package:e_commerce_app/home/home_screen_view.dart';
import 'package:e_commerce_app/login_screen.dart';
import 'package:e_commerce_app/signup_screen.dart';
import 'package:e_commerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (coontext, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: MyTheme.myTheme,
            initialRoute: LoginScreen.routeName,
            routes: {
              LoginScreen.routeName: (context) => LoginScreen(),
              RegisterScreen.routeName: (context) => RegisterScreen(),
              HomeScreenView.routeName: (context) => HomeScreenView(),
            },
          );
        });
  }
}
