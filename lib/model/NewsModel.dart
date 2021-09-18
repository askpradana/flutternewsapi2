class NewsModel {
  String? status;
  int? totalResults;
  List<Articles>? articles;

  NewsModel({status, totalResults, articles});

  NewsModel.fromJson(Map<String, dynamic> json) {
    if (json["status"] is String) status = json["status"];
    if (json["totalResults"] is int) totalResults = json["totalResults"];
    if (json["articles"] is List)
      articles = json["articles"] == null
          ? null
          : (json["articles"] as List)
              .map((e) => Articles.fromJson(e))
              .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["status"] = status;
    data["totalResults"] = totalResults;
    if (articles != null)
      data["articles"] = articles?.map((e) => e.toJson()).toList();
    return data;
  }
}

class Articles {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Articles(
      {source,
      author,
      title,
      description,
      url,
      urlToImage,
      publishedAt,
      content});

  Articles.fromJson(Map<String, dynamic> json) {
    if (json["source"] is Map)
      source = json["source"] == null ? null : Source.fromJson(json["source"]);
    if (json["author"] is String) author = json["author"];
    if (json["title"] is String) title = json["title"];
    if (json["description"] is String) description = json["description"];
    if (json["url"] is String) url = json["url"];
    if (json["urlToImage"] is String) urlToImage = json["urlToImage"];
    if (json["publishedAt"] is String) publishedAt = json["publishedAt"];
    if (json["content"] is String) content = json["content"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (source != null) data["source"] = source?.toJson();
    data["author"] = author;
    data["title"] = title;
    data["description"] = description;
    data["url"] = url;
    data["urlToImage"] = urlToImage;
    data["publishedAt"] = publishedAt;
    data["content"] = content;
    return data;
  }
}

class Source {
  String? id;
  String? name;

  Source({id, name});

  Source.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) id = json["id"];
    if (json["name"] is String) name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    return data;
  }
}
