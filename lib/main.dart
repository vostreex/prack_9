import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'app.dart';
import 'package:prack_9/data/note_store.dart';

void main() {
  GetIt.I.registerSingleton<NoteStore>(NoteStore());
  runApp(MyApp());
}