import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DBHelper {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;

    // If _database is null, instantiate it
    _database = await initDatabase();
    return _database!;
  }

  static Future<Database> initDatabase() async {
    final path = await getDatabasesPath();

    return openDatabase(
      '$path/quiz.db',
      onCreate: (db, version) async {
        // Create your tables here
        await db.execute('''
        CREATE TABLE IF NOT EXISTS mcq_questions (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          domain TEXT,
          question TEXT,
          options TEXT,
          answer TEXT
        )
      ''');
      },
      version: 1,
    );
  }