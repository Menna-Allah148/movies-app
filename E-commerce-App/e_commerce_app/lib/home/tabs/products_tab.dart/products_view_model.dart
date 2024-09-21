import 'package:e_commerce_app/data/api_manager.dart';
import 'package:e_commerce_app/data/model/Response/products_response.dart';
import 'package:e_commerce_app/home/tabs/products_tab.dart/product_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductViewModel extends Cubit<ProductStates> {
  ProductViewModel() : super(ProductInitialState());
  // todo: hold data - handle logic
  List<Product> productList = [];

  void getAllProducts() async {
    try {
      emit(ProductLoadingState());
      var response = await ApiManager.getAllProducts();
      if (response.statusMsg == 'fail') {
        emit(ProductErrorState(errorMessage: response.message!));
      } else {
        productList = response.data ?? [];
        emit(ProductSuccessState(productResponse: response));
      }
    } catch (e) {
      emit(ProductErrorState(errorMessage: e.toString()));
    }
  }
}
