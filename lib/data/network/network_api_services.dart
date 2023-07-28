import 'dart:convert';
import 'dart:io';

import 'package:news_app/data/app_exception.dart';

import 'base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException();
    }
  }

  @override
  Future getPostApiResponse(String url, data) {
    throw UnimplementedError();
  }
  returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
        throw BadRequestException(response.body.toString());

      // case 500:
      case 404:
        throw UnauthorizedException(response.body.toString());

      default:
        throw FetchDataException(
            'Error occurred while communicating with the server' +
                'with status code' +
                response.statusCode.toString());
    }
  }
}
