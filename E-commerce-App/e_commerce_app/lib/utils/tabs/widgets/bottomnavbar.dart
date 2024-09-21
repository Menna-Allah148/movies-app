import 'package:e_commerce_app/utils/my_colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTapFunction;

  CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: MyColors.blueColor,
      currentIndex: selectedIndex,
      onTap: onTapFunction,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
          label: 'Products',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            color: selectedIndex == 2 ? Colors.green : null, // Set green when selected
          ),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      selectedItemColor:
          Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
      unselectedItemColor:
          Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      type: BottomNavigationBarType.fixed,
    );
  }
}
