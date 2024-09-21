
import 'package:e_commerce_app/data/model/Response/category_or_brand_response.dart';

abstract class HomeTabStates {}

class HomeTabInitialState extends HomeTabStates {}

class HomeCategoryLoadingState extends HomeTabStates {}

class HomeCategoryErrorState extends HomeTabStates {
  String errorMessage;
  HomeCategoryErrorState({required this.errorMessage});
}

class HomeCategorySuccessState extends HomeTabStates {
  CategoryOrBrandResponse categoryResponse;
  HomeCategorySuccessState({required this.categoryResponse});
}

///////////////////////////////////

class HomeBrandLoadingState extends HomeTabStates {}

class HomeBrandErrorState extends HomeTabStates {
  String errorMessage;
  HomeBrandErrorState({required this.errorMessage});
}

class HomeBrandSuccessState extends HomeTabStates {
  CategoryOrBrandResponse brandResponse;
  HomeBrandSuccessState({required this.brandResponse});
}
