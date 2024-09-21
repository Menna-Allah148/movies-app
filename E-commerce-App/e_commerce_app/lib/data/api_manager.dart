import 'dart:convert';
import 'package:e_commerce_app/data/end_points.dart';
import 'package:e_commerce_app/data/model/Response/category_or_brand_response.dart';
import 'package:e_commerce_app/data/model/Response/login_response.dart';
import 'package:e_commerce_app/data/model/Response/products_response.dart';
import 'package:e_commerce_app/data/model/Response/register_response.dart';
import 'package:http/http.dart' as http;

// https://ecommerce.routemisr.com/api/v1/auth/signup

class ApiManager {
  static const String baseUrl = 'ecommerce.routemisr.com';

  static Future<RegisterResponse> register(String email, String name,
      String phone, String password, String rePassword) async {
    Uri url = Uri.https(baseUrl, EndPoint.signUp);
    try {
      var response = await http.post(url, body: {
        "name": "mennaallah",
        "email": "menna@gmail.com",
        "password": "123456",
        "rePassword": "123456",
        "phone": "01102579355"
      });
      var bodyString = response.body; //string
      var json = jsonDecode(bodyString); //json
      return RegisterResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
//https://ecommerce.routemisr.com/api/v1/auth/signin

  static Future<LoginResponse> login(String email, String password) async {
    Uri url = Uri.https(baseUrl, EndPoint.login);
    try {
      var response = await http
          .post(url, body: {"email": "menna@gmail.com", "password": "123456"});
      var bodyString = response.body; //string
      var json = jsonDecode(bodyString); //json
      return LoginResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }

  static Future<CategoryOrBrandResponse> getAllCategories() async {
    Uri url = Uri.https(baseUrl, EndPoint.getAllCategories);
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return CategoryOrBrandResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }

    static Future<CategoryOrBrandResponse> getAllBrands() async {
    Uri url = Uri.https(baseUrl, EndPoint.getAllBrands);
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return CategoryOrBrandResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
  static Future<ProductResponse> getAllProducts() async {
    Uri url = Uri.https(baseUrl, EndPoint.getAllProducts);
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return ProductResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
}
