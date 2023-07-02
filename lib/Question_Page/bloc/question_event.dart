// ignore_for_file: must_be_immutable

part of 'question_bloc.dart';

@immutable
abstract class QuestionEvent {}

class QuestionInitialEvent extends QuestionEvent {}

class AnswerClickedEvent extends QuestionEvent {
  final String clickedAnswer;

  AnswerClickedEvent(this.clickedAnswer);
}

class NextQuestionIncrementEvent extends QuestionEvent {
  int currentIndex;

  NextQuestionIncrementEvent({required this.currentIndex});
}
