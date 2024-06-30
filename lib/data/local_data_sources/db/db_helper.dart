import 'package:injectable/injectable.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

@lazySingleton
class DatabaseHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    final path = await getDatabasesPath();
    final databasePath = join(path, 'your_database.db');

    return await openDatabase(
      databasePath,
      version: 1,
      onCreate: (db, version) async {
        // Create tables if needed
        await db.execute('''
          CREATE TABLE books(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            author TEXT,
            birthYear INTEGER,
            deathYear INTEGER,
            imageUrl TEXT,
            subjects TEXT,
            textUrl TEXT
          )
        ''');
      },
    );
  }
}
