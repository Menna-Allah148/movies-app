import 'package:e_commerce_app/data/model/Response/products_response.dart';

abstract class ProductStates {}

class ProductInitialState extends ProductStates {}

class ProductLoadingState extends ProductStates {}

class ProductErrorState extends ProductStates {
  String errorMessage;
  ProductErrorState({required this.errorMessage});
}

class ProductSuccessState extends ProductStates {
  ProductResponse productResponse;
  ProductSuccessState({required this.productResponse});
}
