import 'package:injectable/injectable.dart';
import 'package:palmkindle/data/local_data_sources/db/db_helper.dart';
import 'package:palmkindle/data/local_data_sources/entity/book_entity.dart';

@lazySingleton
class LocalDataSource {
  final DatabaseHelper _databaseHelper;

  LocalDataSource(this._databaseHelper);

  Future<void> insertBook(Book book) async {
    final db = await _databaseHelper.database;
    await db.insert('books', book.toMap());
  }

  Future<List<Book>> getAllBooks() async {
    final db = await _databaseHelper.database;
    final List<Map<String, dynamic>> maps = await db.query('books');
    return List.generate(maps.length, (i) {
      return Book(
        id: maps[i]['id'],
        title: maps[i]['title'],
        author: maps[i]['author'],
        birthYear: maps[i]['birthYear'],
        deathYear: maps[i]['deathYear'],
        imageUrl: maps[i]['imageUrl'],
        subjects: maps[i]['subjects'],
        textUrl: maps[i]['textUrl'],
      );
    });
  }

  Future<bool> isBookStoredLocally(String url) async {
    final db = await _databaseHelper.database;
    final List<Map<String, dynamic>> maps = await db.query(
      'books',
      where: 'imageUrl = ?',
      whereArgs: [url],
    );
    return maps.isNotEmpty;
  }
}
