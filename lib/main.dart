import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'app.dart';
import 'features/notes/models/note.dart';
import 'features/notes/state/add_note_store.dart';
import 'features/notes/state/archive_store.dart';
import 'features/notes/state/edit_note_store.dart';
import 'features/notes/state/favorites_store.dart';
import 'features/notes/state/notes_list_store.dart';
import 'package:mobx/mobx.dart';

void main() {
  GetIt.I.registerSingleton<ObservableList<Note>>(ObservableList<Note>());
  GetIt.I.registerSingleton<AddNoteStore>(AddNoteStore());
  GetIt.I.registerSingleton<EditNoteStore>(EditNoteStore());
  GetIt.I.registerSingleton<NotesListStore>(NotesListStore());
  GetIt.I.registerSingleton<ArchiveStore>(ArchiveStore());
  GetIt.I.registerSingleton<FavoritesStore>(FavoritesStore());
  runApp(MyApp());
}