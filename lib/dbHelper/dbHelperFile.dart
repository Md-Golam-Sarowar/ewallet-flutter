import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import '../models/user.dart';
import 'dart:io';
import 'dart:async';

class dbconnection {
  Future<Database> init() async {
    Directory directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, "userdb.db");

    return await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute("""
              Create table user(
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              name TEXT,
              bankAc TEXT,
              Nid TEXT,
              email TEXT,
              date TEXT,
              pass TEXT,
              confirmPass TEXT,
              mobile TEXT,
              dateOfBirth TEXT
          )
              """);
    });
  }

  Future<int> addItem(user item) async {
    //returns number of items inserted as an integer

    final db = await init(); //open database

    return db.insert(
      "user", item.toMap(), //toMap() function from MemoModel
      conflictAlgorithm:
          ConflictAlgorithm.ignore, //ignores conflicts due to duplicate entries
    );
  }

  void deleteTable() async {
    final db = await init();
    db.execute("Drop table if exists user");
  }

  void createTable() async {
    final db = await init();
    db.execute("""
        Create table user(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        bankAc TEXT,
        Nid TEXT,
        email TEXT,
        date TEXT,
        pass TEXT,
        confirmPass TEXT,
        mobile TEXT,
        dateOfBirth TEXT
    )
          """);
  }

  Future<List<user>> fetchUsers() async {
    //returns the memos as a list (array)

    final db = await init();
    final maps = await db
        .query("user"); //query all the rows in a table as an array of maps

    return List.generate(maps.length, (i) {
      //create a list of memos
      return user(
          id: maps[i]['id'] as int,
          name: maps[i]['name'] as String,
          bankAc: maps[i]['bankAc'] as String,
          Nid: maps[i]["Nid"] as String,
          email: maps[i]["email"] as String,
          date: maps[i]["date"] as String,
          pass: maps[i]["pass"] as String,
          confirmPass: maps[i]["confirmPass"] as String,
          mobile: maps[i]["mobile"] as String);
    });
  }
}
