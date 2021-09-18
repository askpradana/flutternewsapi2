import 'dart:convert';
import 'package:berita/model/NewsModel.dart';
import 'package:http/http.dart' as http;

Future<NewsModel> fetchNews() async {
  final response = await http.get(
    Uri.parse(
        'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=1186c5f49a794aad8265af3ab9964ec7'),
  );

  if (response.statusCode == 200) {
    return NewsModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load Data');
  }
}
