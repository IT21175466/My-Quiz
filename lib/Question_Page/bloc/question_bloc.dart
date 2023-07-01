import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc() : super(QuestionInitial()) {
    on<QuestionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
