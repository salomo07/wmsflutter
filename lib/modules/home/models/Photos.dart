// To parse this JSON data, do
//
//     final photo = photoFromJson(jsonString);

import 'dart:convert';

Photo photoFromJson(String str) => Photo.fromJson(json.decode(str));

String photoToJson(Photo data) => json.encode(data.toJson());

class Photo {
  bool success;
  String message;
  int offset;
  int limit;
  List<PhotoElement> photos;

  Photo({
    required this.success,
    required this.message,
    required this.offset,
    required this.limit,
    required this.photos,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        success: json["success"],
        message: json["message"],
        offset: json["offset"],
        limit: json["limit"],
        photos: List<PhotoElement>.from(
            json["photos"].map((x) => PhotoElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "offset": offset,
        "limit": limit,
        "photos": List<dynamic>.from(photos.map((x) => x.toJson())),
      };
}

class PhotoElement {
  String description;
  String url;
  String title;
  int id;
  int user;

  PhotoElement({
    required this.description,
    required this.url,
    required this.title,
    required this.id,
    required this.user,
  });

  factory PhotoElement.fromJson(Map<String, dynamic> json) => PhotoElement(
        description: json["description"],
        url: json["url"],
        title: json["title"],
        id: json["id"],
        user: json["user"],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "url": url,
        "title": title,
        "id": id,
        "user": user,
      };
}
