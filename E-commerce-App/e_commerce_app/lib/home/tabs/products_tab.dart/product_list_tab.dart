import 'package:e_commerce_app/home/home_screen_view.dart';
import 'package:e_commerce_app/home/tabs/home_tab/home_tab_view_model.dart';
import 'package:e_commerce_app/home/tabs/products_tab.dart/card_items/products_card.dart';
import 'package:e_commerce_app/home/tabs/products_tab.dart/product_states.dart';
import 'package:e_commerce_app/home/tabs/products_tab.dart/products_view_model.dart';
import 'package:e_commerce_app/utils/my_colors.dart';
import 'package:e_commerce_app/utils/tabs/widgets/app-bar.dart'; // Make sure this import is correct
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsTab extends StatelessWidget {
  ProductViewModel viewModel = ProductViewModel();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductViewModel, ProductStates>(
      bloc: viewModel..getAllProducts(), 
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(
                180.h), 
            child: HomeAppBar(), 
          ),
          body: state is ProductSuccessState
              ? Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 6.w,
                      mainAxisSpacing: 16.h,
                      childAspectRatio: 1 / 1.1,
                    ),
                    itemCount: viewModel.productList.length,
                    itemBuilder: (context, index) {
                      try {
                        return InkWell(
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                HomeScreenView.routeName,
                              );
                            },
                            child:ProductCard(product:viewModel.productList[index],)
                            ); 
                      } catch (e) {
                        return Center(
                          child: Text("Error: $e"),
                        );
                      }
                    },
                  ),
                )
              : const Center(
                  child: CircularProgressIndicator(
                    color: MyColors.blueColor,
                  ),
                ),
        );
      },
    );
  }
}
