import 'package:meta/meta.dart';
import 'package:tojuwa/data/dataSource/news_data.dart';
import 'package:tojuwa/data/models/article.dart';

class NewsRepository {

  NewsDataSource newsDataSource;

  NewsRepository({@required this.newsDataSource});

  Future<List<Articles>> fetchCoronaSummary() async {
    return await newsDataSource.getNewsForCorona();
  }
  
}