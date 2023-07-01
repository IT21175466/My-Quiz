import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_quize/Models/quiz_model.dart';
import 'package:my_quize/Question_Page/bloc/question_bloc.dart';

class QuestionTile extends StatelessWidget {
  final QuestionModel questionModel;
  const QuestionTile({super.key, required this.questionModel});

  @override
  Widget build(BuildContext context) {
    final QuestionBloc questionBloc = QuestionBloc();

    return BlocConsumer<QuestionBloc, QuestionState>(
      bloc: questionBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: [
            //Spacer(),

            Spacer(),
          ],
        );
      },
    );
  }
}
