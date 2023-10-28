import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/api/api_constants.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:news/model/SourceResponse.dart';

class ApiManager {
  static Future<SourceResponse?> getSources() async {
    /*
    https://newsapi.org/v2/top-headlines/sources?apiKey=b5b28fdd5dd54176ab1bd27deff95fb2
     */
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.sourceApi,
        {'apiKey': 'b5b28fdd5dd54176ab1bd27deff95fb2'});
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return SourceResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }

  static Future<NewsResponse> getNewsBySourceId(String sourceId) async {
    /*
    https://newsapi.org/v2/everything?q=bitcoin&apiKey=b5b28fdd5dd54176ab1bd27deff95fb2
     */
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.newsApi,
        {'apiKey': 'b5b28fdd5dd54176ab1bd27deff95fb2', 'sources': sourceId});
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return NewsResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
}
