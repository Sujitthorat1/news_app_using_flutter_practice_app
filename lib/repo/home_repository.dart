
import 'package:news_app/model/news_model.dart';
import 'package:news_app/res/app_url.dart';

import '../data/network/base_api_services.dart';
import '../data/network/network_api_services.dart';

class HomeRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  Future<NewsApi> fetchMovieList() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.newsBaseUrl);
      return response = NewsApi.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
