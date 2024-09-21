import 'package:e_commerce_app/home/cubit/home_screen_states.dart';
import 'package:e_commerce_app/home/cubit/home_screen_view_model.dart';
import 'package:e_commerce_app/home/tabs/home_tab/home_tab.dart';
import 'package:e_commerce_app/utils/tabs/widgets/bottomnavbar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenView extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  HomeScreenViewModel viewModel = HomeScreenViewModel();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenViewModel, HomeScreenStates>(
      bloc: viewModel,
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: CustomBottomNavigationBar(
            selectedIndex: viewModel.selectedIndex,
            onTapFunction: (index) {
              viewModel.changeSelectedIndex(index);
            },
          ),
          body: viewModel.tabs[viewModel.selectedIndex],
        );
      },
    );
  }
}
