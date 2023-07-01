import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_quize/Models/quiz_model.dart';

import '../../Data/questions.dart';
part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc() : super(QuestionInitialState()) {
    on<QuestionInitialEvent>(questionInitialEvent);
    on<AnswerClickedEvent>(answerClickedEvent);
  }

  FutureOr<void> questionInitialEvent(
      QuestionInitialEvent event, Emitter<QuestionState> emit) {
    emit(QuestionLoadedSucessState(Questions.quizData
        .map(
          (e) => QuestionModel(
            id: e['id'],
            question: e['question'],
            optionOne: e['optionOne'],
            optionTwo: e['optionTwo'],
            optionThree: e['optionThree'],
            optionFour: e['optionFour'],
            correctAnswer: e['correctAnswer'],
          ),
        )
        .toList()));
  }

  FutureOr<void> answerClickedEvent(
      AnswerClickedEvent event, Emitter<QuestionState> emit) {
    final loadedState = state as QuestionLoadedSucessState;

    if (loadedState.question[0].correctAnswer == event.clickedAnswer) {
      print("Answer Correct");
      emit(AnswerCorrectState());
    } else {
      emit(AnswerWrongState());
      print("Answer Incorrect");
    }

    emit(QuestionLoadedSucessState((Questions.quizData
        .map(
          (e) => QuestionModel(
            id: e['id'],
            question: e['question'],
            optionOne: e['optionOne'],
            optionTwo: e['optionTwo'],
            optionThree: e['optionThree'],
            optionFour: e['optionFour'],
            correctAnswer: e['correctAnswer'],
          ),
        )
        .toList())));
  }
}
