import 'package:e_commerce_app/home/tabs/home_tab/Home_tab_states.dart';
import 'package:e_commerce_app/home/tabs/home_tab/home_tab_view_model.dart';
import 'package:e_commerce_app/utils/my_colors.dart';
import 'package:e_commerce_app/utils/tabs/widgets/announcement.dart';
import 'package:e_commerce_app/utils/tabs/widgets/app-bar.dart';
import 'package:e_commerce_app/utils/tabs/widgets/category_or_brand_section.dart';
import 'package:e_commerce_app/utils/tabs/widgets/row_section_-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatelessWidget {
  // static const String routeName = 'home_tab';
  HomeTabViewModel viewModel = HomeTabViewModel();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTabViewModel, HomeTabStates>(
      bloc: viewModel..getAllCategories()..getAllBrands(),
    
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                HomeAppBar(),
                SizedBox(
                  height: 10,
                ),
                Announcement(),
                SizedBox(
                  height: 10,
                ),
                RowSectionWidget(name: 'Categories'),
                SizedBox(
                  height: 24.h,
                ),
                state is HomeCategorySuccessState
                    ? CategoriesOrBrandsSection(
                        list: state.categoryResponse.data!,
                      )
                    : Center(
                        child: CircularProgressIndicator(
                            color: MyColors.blueColor),
                      ),
                SizedBox(
                  height: 24.h,
                ),
                RowSectionWidget(name: 'Brands'),
                SizedBox(
                  height: 24.h,
                ),
                state is HomeBrandSuccessState
                    ? CategoriesOrBrandsSection(
                        list: state.brandResponse.data!,
                      )
                    : Center(
                        child: CircularProgressIndicator(
                            color: MyColors.blueColor),
                      )
              ],
            ),
          ),
        );
      },
    );
  }
}
