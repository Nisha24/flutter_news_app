import 'dart:convert';
import 'package:flutter_news_app/models/articleModel.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticlesModel> news = [];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=5e2fe8d6a8e740bbb6b66bd6eca7f5ee";
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticlesModel articlesModel = ArticlesModel(
              author: element['author'],
              title: element['title'],
              description: element['description'],
              url: element['url'],
              imagetourl: element['urlToImage'],
              publishedAt: element['publishedAt'],
              content: element['content']);
          news.add(articlesModel);
        }
      });
    }
  }
}
class CategoryNews {
  List<ArticlesModel> news = [];

  Future<void> getNews(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=5e2fe8d6a8e740bbb6b66bd6eca7f5ee";
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticlesModel articlesModel = ArticlesModel(
              author: element['author'],
              title: element['title'],
              description: element['description'],
              url: element['url'],
              imagetourl: element['urlToImage'],
              publishedAt: element['publishedAt'],
              content: element['content']);
          news.add(articlesModel);
        }
      });
    }
  }
}