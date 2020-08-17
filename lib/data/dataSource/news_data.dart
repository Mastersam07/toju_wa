import 'package:http/http.dart' as http;
import 'package:tojuwa/data/models/article.dart';
import 'dart:convert';
import 'package:tojuwa/apiKey.dart';

class NewsDataSource {
  Future<List<Articles>> getNewsForCorona() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=ng&q=corona&apiKey=$apiKey";

    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Articles> article = Article.fromJson(data).articles;
      return article;
    } else {
      throw Exception();
    }
  }
}
