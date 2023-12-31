import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitialState()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<CardNavigateToQuestionPageEvent>(cardNavigateToQuestionPageEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(HomeLoadedState());
  }

  FutureOr<void> cardNavigateToQuestionPageEvent(
      CardNavigateToQuestionPageEvent event, Emitter<HomeState> emit) {
    emit(QuizCardButtonClickedNavigateActionState());
  }
}
