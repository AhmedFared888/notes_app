part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

class NotesInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}
