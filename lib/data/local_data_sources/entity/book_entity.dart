import 'dart:convert';

class Book {
  final int? id;
  final String title;
  final String author;
  final int birthYear;
  final int deathYear;
  final String imageUrl;
  final List<String> subjects;
  final String textUrl;

  Book({
    this.id,
    required this.title,
    required this.author,
    required this.birthYear,
    required this.deathYear,
    required this.imageUrl,
    required this.subjects,
    required this.textUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'author': author,
      'birthYear': birthYear,
      'deathYear': deathYear,
      'imageUrl': imageUrl,
      'subjects': jsonEncode(subjects),
      'textUrl': textUrl,
    };
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      id: map['id'],
      title: map['title'],
      author: map['author'],
      birthYear: map['birthYear'],
      deathYear: map['deathYear'],
      imageUrl: map['imageUrl'],
      subjects: List<String>.from(
          jsonDecode(map['subjects'])), // Convert JSON string to list
      textUrl: map['textUrl'],
    );
  }
}
