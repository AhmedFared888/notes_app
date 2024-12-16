part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitLoading extends NotesCubitState {}

final class NotesCubitSuccess extends NotesCubitState {
  final List<NoteModel> note;

  NotesCubitSuccess(this.note);
}

final class NotesCubitFailure extends NotesCubitState {
  final String errMessage;

  NotesCubitFailure(this.errMessage);
}
