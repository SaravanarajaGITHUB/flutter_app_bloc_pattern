import 'package:flutter_app_bloc_pattern/src/model/ItemModel.dart';
import 'package:flutter_app_bloc_pattern/src/model/TrailerModel.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import 'dart:async';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = '7c51bd951efa4ffd50b804fe904dae47';
  final _baseUrl = "http://api.themoviedb.org/3/movie";

  Future<ItemModel> fetchMovieList() async {
    final response = await client.get("$_baseUrl/popular?api_key=$_apiKey");
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('failed to load post');
    }
  }

  Future<TrailerModel> fetchTrailer(int movieId) async {
    final response =
    await client.get("$_baseUrl/$movieId/videos?api_key=$_apiKey");

    if (response.statusCode == 200) {
      return TrailerModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load trailers');
    }
  }
}
