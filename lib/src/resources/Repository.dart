import 'package:flutter_app_bloc_pattern/src/model/ItemModel.dart';
import 'package:flutter_app_bloc_pattern/src/model/TrailerModel.dart';
import 'package:flutter_app_bloc_pattern/src/resources/MovieApiProvider.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();

  Future<TrailerModel> fetchTrailers(int movieId) => moviesApiProvider.fetchTrailer(movieId);
}