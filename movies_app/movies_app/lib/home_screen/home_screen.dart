import 'package:flutter/material.dart';
import 'package:movies_app/home_screen/widgets/home_widgets/HomeWidget.dart';
import 'package:movies_app/home_screen/widgets/bottom_nav_bar.dart';
import 'package:movies_app/home_screen/widgets/home_widgets/browse_widget.dart';
import 'package:movies_app/home_screen/widgets/popular_slider.dart';
import 'package:movies_app/home_screen/widgets/home_widgets/search_widget%20.dart';
import 'package:movies_app/home_screen/widgets/home_widgets/watchlist_widget.dart';
import 'package:movies_app/models/category_response.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_Screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  static const String routeName = 'home_screen';

  int selectedIndex = 0;

  List<Widget> homeBody = [
    HomeWidget(),
    SearchWidget(),
    BrowseWidget(),
    WatchListWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        selectedIndex: selectedIndex,
        onItemTapped: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: homeBody[selectedIndex],
    );
  }
}
