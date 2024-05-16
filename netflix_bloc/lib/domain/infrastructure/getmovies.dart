import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_bloc/domain/models/popmovie_model.dart';
import 'package:netflix_bloc/domain/models/toprated_model.dart';
import 'package:netflix_bloc/domain/models/topshows.dart';
import 'package:netflix_bloc/domain/repository/get_movies.dart';
import 'package:http/http.dart' as http;

import 'package:netflix_bloc/core/api/uri.dart';
@LazySingleton(as: GetMoviesRepo)
class GetMovies extends GetMoviesRepo {
  @override
  Future<dynamic> getPopularMovies() async {
    final queryParams = {
      "api_key": ApiEndpoints.apiKey,
      "language": "en-US",
      "page": "1"
    };
    final uri = Uri.https(
        ApiEndpoints.baseUrl, ApiEndpoints.popularMovies, queryParams);
    try {
      final response = await http.Client().get(uri);
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        final models = PopMovieModel.fromJson(jsonDecode(response.body));
        debugPrint(models.toString());
        return models;
      } else if (response.statusCode == 401) {
        throw Exception('Your Key is not valid ! Please make sure your key is valid');
      }
    } on SocketException catch (e) {
      debugPrint('error $e');
       throw Exception('Your connection isn\'t valid ! Please make sure about your connection');

    } catch (e) {
      debugPrint('error :  ${e.toString()}');
      throw Exception('Something Went wron ! Please try again later');
    }
  }

  @override
  Future<dynamic> getTopRatedMovies() async {
    final queryParams = {
      "api_key": ApiEndpoints.apiKey,
      "language": "en-US",
      "page": "1"
    };
    final uri = Uri.https(
        ApiEndpoints.baseUrl, ApiEndpoints.topRatedMovies, queryParams);
    try {
      final response = await http.Client().get(uri);
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        final models = TopratedMovieModel.fromJson(jsonDecode(response.body));
        debugPrint(models.toString());
        return models;
      } else if (response.statusCode == 401) {
        throw Exception('Your Key is not valid ! Please make sure your key is valid');
      }
    } on SocketException catch (e) {
      debugPrint("error $e");
       throw Exception('Your connection isn\'t valid ! Please make sure about your connection');

    }catch(e){
       debugPrint('error :  ${e.toString()}');
      throw Exception('Something Went wron ! Please try again later');
    }
  }
  
  @override
  Future getTopShows() async {
    final queryParams = {
      "api_key": ApiEndpoints.apiKey,
      "language": "en-US",
      "page": "1"
    };
    final uri = Uri.https(
        ApiEndpoints.baseUrl, ApiEndpoints.topRatedShows, queryParams);
    try {
      final response = await http.Client().get(uri);
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        final models = TopRatedShowsModel.fromJson(jsonDecode(response.body));
        debugPrint(models.toString());
        return models;
      } else if (response.statusCode == 401) {
        throw Exception('Your Key is not valid ! Please make sure your key is valid');
      }
    } on SocketException catch (e) {
      debugPrint("error $e");
       throw Exception('Your connection isn\'t valid ! Please make sure about your connection');

    }catch(e){
       debugPrint('error :  ${e.toString()}');
      throw Exception('Something Went wron ! Please try again later');
    }
  }
}
