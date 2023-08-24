import 'dart:convert';
import 'package:flutter_application_1/Data/Models/newsmodel.dart';
import 'package:http/http.dart' as http;


class GetNewsRepo {
  Future<NewsModel?> getNews() async {
    try {
      var response = await http.get(
        Uri.parse(
            "https://newsapi.org/v2/everything?q=tesla&from=2023-07-24&sortBy=publishedAt&apiKey=435c9474e8be442eb990ca8df0736cd2"),
      );

      var decodedResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        NewsModel myResponse = NewsModel.fromJson(decodedResponse);

        return myResponse;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }
}