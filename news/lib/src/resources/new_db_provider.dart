import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'dart:async';
import '../models/item_model.dart';

class NewsDbProvider {
  Database db;

  //cannot assign async to a Constructor, so...
  //init tries to create a database or attempt to reopen it
  init() async {
    //for mobile devices, returns reference to a little folder where we can safely store some data
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    //documentsDirectory is a folder reference. $.path speaks for itself.
    final path = join(documentsDirectory.path,
        "items.db"); //join the path + the word "items.db" together
    db = await openDatabase(
      path, //create if not exist, or just use path
      version: 1, //internal record for me
      onCreate: (Database newDb, int version) {
        //only called the very first time our user starts our applications
        newDb.execute("""
          CREATE TABLE Items
          (
            
          )
        """);
      },
    );
  }
}