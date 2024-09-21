import 'package:e_commerce_app/home/cubit/home_screen_states.dart';
import 'package:e_commerce_app/home/tabs/favourite_tab.dart';
import 'package:e_commerce_app/home/tabs/home_tab/home_tab.dart';
import 'package:e_commerce_app/home/tabs/products_tab.dart/product_list_tab.dart';
import 'package:e_commerce_app/home/tabs/profile_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenViewModel extends Cubit<HomeScreenStates> {
  HomeScreenViewModel() : super(HomeScreenInitialState());
  int selectedIndex = 0;

  List<Widget> tabs = [
    HomeTab(),
    ProductsTab(),
    FavouriteTab(),
    ProfileTab()
  ];
  void changeSelectedIndex(int newIndex) {
    emit(HomeScreenInitialState());
    selectedIndex = newIndex;
    emit(ChangeSelectedIndex());
  }
}
