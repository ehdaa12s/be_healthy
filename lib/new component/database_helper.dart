import 'package:be_healthy/note_pages/note.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._();
  static Database? _database;

  DatabaseHelper._();

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'notes.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute('''
          CREATE TABLE notes(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            content TEXT
          )
        ''');
      },
    );
  }

  Future<List<Note>> getNotes() async {
    final db = await instance.database;
    final List<Map<String, dynamic>> maps = await db!.query('notes');
    return List.generate(maps.length, (i) {
      return Note(
        id: maps[i]['id'],
        title: maps[i]['title'],
        content: maps[i]['content'],
      );
    });
  }

  Future<void> insert(Note note) async {
    final db = await instance.database;
    await db?.insert('notes', note.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> update(Note note) async {
    final db = await instance.database;
    await db!.update(
      'notes',
      note.toMap(),
      where: 'id = ?',
      whereArgs: [note.id],
    );
  }

  Future<void> delete(int id) async {
    final db = await instance.database;
    await db!.delete(
      'notes',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
