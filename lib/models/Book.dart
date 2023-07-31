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
  String read;
  String isbn;
  String author;

  Book({
    required this.id,
    required this.title,
    required this.read,
    required this.isbn,
    required this.author,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json["id"],
        title: json["title"],
        read: json["read"],
        isbn: json["isbn"],
        author: json["author"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "read": read,
        "isbn": isbn,
        "author": author,
      };
}
