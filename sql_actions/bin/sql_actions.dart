import 'package:sqflite/sqflite.dart';

Future<void> main(List<String> arguments) async {
  var db = await openDatabase(
      'D:/trofimov/DEV/FLUTTER/project/GITHUB/thread/thread/assets/db/thread.db');

  print(db.isOpen);
}
