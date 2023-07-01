part of 'question_bloc.dart';

@immutable
abstract class QuestionEvent {}

class QuestionInitialEvent extends QuestionEvent {}

class AnswerClickedEvent extends QuestionEvent {
  final String clickedAnswer;

  AnswerClickedEvent(this.clickedAnswer);
}
