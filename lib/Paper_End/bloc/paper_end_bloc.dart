import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'paper_end_event.dart';
part 'paper_end_state.dart';

class PaperEndBloc extends Bloc<PaperEndEvent, PaperEndState> {
  PaperEndBloc() : super(PaperEndInitial()) {
    on<PaperEndPageNavigateToHomePage>(paperEndPageNavigateToHomePage);
  }

  FutureOr<void> paperEndPageNavigateToHomePage(
      PaperEndPageNavigateToHomePage event, Emitter<PaperEndState> emit) {
    emit(PaperEndActionState());
  }
}
