// To parse this JSON data, do
//
//     final book = bookFromJson(jsonString);

import 'dart:convert';

List<Book> bookFromJson(String str) =>
    List<Book>.from(json.decode(str).map((x) => Book.fromJson(x)));

String bookToJson(List<Book> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Book {
  String id;
  String title;
  String isbn;
  String author;
  bool isdeleted;

  Book({
    required this.id,
    required this.title,
    required this.isbn,
    required this.author,
    required this.isdeleted,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json["id"],
        title: json["title"],
        isbn: json["isbn"],
        author: json["author"],
        isdeleted: json["isdeleted"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "isbn": isbn,
        "author": author,
        "isdeleted": isdeleted,
      };
}
