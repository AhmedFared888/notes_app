part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitLoading extends NotesCubitState {}

final class NotesCubitSuccess extends NotesCubitState {
  final List<NoteModel> note;

  NotesCubitSuccess(this.note);
}

final class NotesCubitFaliure extends NotesCubitState {
  final String errMessage;

  NotesCubitFaliure(this.errMessage);
}
