class Book {
  final int? id;
  final String title;
  final String author;
  final int birthYear;
  final int deathYear;
  final String imageUrl;
  final String subjects;
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
      'subjects': subjects,
      'textUrl': textUrl,
    };
  }
}
