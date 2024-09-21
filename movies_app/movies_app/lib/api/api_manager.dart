import 'dart:convert';
import 'package:movies_app/api/api_conatants.dart';
import 'package:movies_app/models/category_response.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  static const popularUrl =
      "https://api.themoviedb.org/3/movie/popular?api_key=${Constants.apiKey}";
  static const topRatedUrl =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constants.apiKey}';

  static const upcomingUrl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=${Constants.apiKey}';

  Future<List<Movie>> getPopularMovies() async {
    final response = await http.get(Uri.parse(popularUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something happened');
    }
  }
  ////////////////////////////////////////////////
 
  Future<List<Movie>> getTopRatedMovies() async {
    final response = await http.get(Uri.parse(topRatedUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something happened');
    }
  }

//////////////////////////////////////

  Future<List<Movie>> getUpcomingMovies() async {
    final response = await http.get(Uri.parse(upcomingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something happened');
    }
  }
}
