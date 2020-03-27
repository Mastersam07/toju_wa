import 'package:http/http.dart' as http;
import 'package:tojuwa/models/article.dart';
import 'dart:convert';
import 'package:tojuwa/apiKey.dart';

class NewsForCorona {
  List<Article> news = [];

  Future<void> getNewsForCorona() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=ng&q=corona&apiKey=$apiKey";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          Article article = Article(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"],
            articleUrl: element["url"],
          );
          news.add(article);
        }
      });
    }
  }
}