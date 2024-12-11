part of 'add_note_cubit.dart';

@immutable
sealed class NotesState {}

class NotesInitial extends NotesState {}

class AddNoteLoading extends NotesState {}

class AddNotesuccess extends NotesState {}

class AddNoteFailure extends NotesState {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}
