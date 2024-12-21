part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesCubitInitial extends NotesState {}

class NotesLoaded extends NotesState {
  final List<NoteModel> notes;

  NotesLoaded(this.notes);
}
