part of 'question_bloc.dart';

@immutable
abstract class QuestionState {}

class QuestionInitialState extends QuestionState {}

abstract class QuestionActionState extends QuestionState {}

class QuestionLoadedSucessState extends QuestionState {
  final List<QuestionModel> question;

  QuestionLoadedSucessState(this.question);
}

class AnswerCorrectState extends QuestionActionState {}

class AnswerWrongState extends QuestionActionState {}

class NextButtonClickedState extends QuestionActionState {
  final int currentIndex;

  NextButtonClickedState(this.currentIndex);
}

class PaperEndState extends QuestionActionState {}
