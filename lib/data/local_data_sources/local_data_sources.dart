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
      return Book.fromMap(maps[i]);
    });
  }

  Future<void> deleteBook(int id) async {
    final db = await _databaseHelper.database;
    await db.delete('books', where: 'id = ?', whereArgs: [id]);
  }

  Future<bool> isBookStoredLocally(String title) async {
    final db = await _databaseHelper.database;
    final List<Map<String, dynamic>> maps = await db.query(
      'books',
      where: 'title = ?',
      whereArgs: [title],
    );
    return maps.isNotEmpty;
  }
}
