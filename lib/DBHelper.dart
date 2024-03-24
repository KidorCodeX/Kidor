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

  static Future<void> insertMCQ(String messageText, String question,
      String options, String answer) async {
    final db = await database;

    // Ensure that the options field is stored as a TEXT column
    await db.insert(
      'mcq_questions',
      {
        'domain': messageText,
        'question': question,
        'options': options,
        'answer': answer,
      },
      conflictAlgorithm:
          ConflictAlgorithm.replace, // or use your preferred conflict algorithm
    );
  }

  static Future<List<Map<String, dynamic>>> getAllMCQs() async {
    final db = await database;
    return db.query('mcq_questions');
  }

  static Future<void> deleteDomain(String domain) async {
    final db = await database;
    await db.delete('mcq_questions', where: 'domain = ?', whereArgs: [domain]);
  }
}
