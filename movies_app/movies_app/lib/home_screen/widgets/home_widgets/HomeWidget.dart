import 'package:flutter/material.dart';
import 'package:movies_app/api/api_manager.dart';
import 'package:movies_app/home_screen/widgets/new_release.dart';
import 'package:movies_app/home_screen/widgets/popular_slider.dart';
import 'package:movies_app/home_screen/widgets/recommended.dart';
import 'package:movies_app/models/category_response.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}
late Future<List<Movie>> popularMovies;


  @override
  void initState() {
    initState();
    popularMovies = ApiManager().getPopularMovies();
    // topRatedovies = Api().getTopRatedMovies();
    // upcomingMovies = Api().getUpcomingMovies();
  }

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(5),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            PopularSlider(),
            SizedBox(height: 5),
            NewRelease(),
            Recommended()
          ],
        ),
      ),
    );
  }
}
