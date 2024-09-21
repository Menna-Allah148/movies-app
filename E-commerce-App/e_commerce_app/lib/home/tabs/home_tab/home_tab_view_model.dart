import 'package:e_commerce_app/data/api_manager.dart';
import 'package:e_commerce_app/data/model/Response/category_or_brand_response.dart';

import 'package:e_commerce_app/home/tabs/home_tab/Home_tab_states.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTabViewModel extends Cubit<HomeTabStates> {
  HomeTabViewModel() : super(HomeTabInitialState());
  List<Datum>? categoriesList;
  List<Datum>? barandsList;
  void getAllCategories() async {
    try {
      emit(HomeCategoryLoadingState());
      var response = await ApiManager.getAllCategories();
      if (response.statusMsg == 'fail') {
        emit(HomeCategoryErrorState(errorMessage: response.message!));
      } else {
        categoriesList = response.data??[];
        if (barandsList != null) {
          emit(HomeCategorySuccessState(categoryResponse: response));
        }
      }
    } catch (e) {
      emit(HomeCategoryErrorState(errorMessage: e.toString()));
    }
  }

  void getAllBrands() async {
    try {
      emit(HomeBrandLoadingState());
      var response = await ApiManager.getAllBrands();
      if (response.statusMsg == 'fail') {
        emit(HomeBrandErrorState(errorMessage: response.message!));
      } else {
        barandsList = response.data??[];
        if (categoriesList != null) {
          emit(HomeBrandSuccessState(brandResponse: response));
        }
      }
    } catch (e) {
      emit(HomeBrandErrorState(errorMessage: e.toString()));
    }
  }
}
