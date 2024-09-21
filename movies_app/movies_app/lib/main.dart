import 'package:flutter/material.dart';
import 'package:movies_app/Theme/myTheme.dart';
import 'package:movies_app/home_screen/home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        // Define your routes here if needed
        HomeScreen.routeName: (context) =>  HomeScreen(),
        // DetailsScreen.routeName: (context) => const DetailsScreen(),
        // MoviesByCategoryScreen.routeName: (context) => MoviesByCategoryScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
    );
  }
}
