import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../bloc/question_bloc.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final QuestionBloc questionBloc = QuestionBloc();

  @override
  void initState() {
    questionBloc.add(QuestionInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionBloc, QuestionState>(
      bloc: questionBloc,
      listenWhen: (previous, current) => current is QuestionActionState,
      buildWhen: (previous, current) => current is! QuestionActionState,
      listener: (context, state) {
        if (state is AnswerCorrectState) {
          showCupertinoDialog(
            context: context,
            builder: (BuildContext dialogContext) {
              return CupertinoAlertDialog(
                content: Column(
                  children: [
                    Container(
                      child: Lottie.network(
                          'https://assets7.lottiefiles.com/packages/lf20_9aa9jkxv.json'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Your Anser is Correct!"),
                  ],
                ),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: Text("OK"),
                    onPressed: () {
                      Navigator.of(dialogContext).pop();
                    },
                  ),
                ],
              );
            },
          );
        } else if (state is AnswerWrongState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Your Answer is Wrong!")));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case QuestionLoadedSucessState:
            final loadedState = state as QuestionLoadedSucessState;

            return Scaffold(
              appBar: AppBar(
                title: Text(
                  "Quiz Page",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                backgroundColor: Colors.green,
              ),
              body: Container(
                color: Color.fromARGB(255, 238, 237, 237),
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        loadedState.question[0].question,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 23,
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        questionBloc.add(AnswerClickedEvent(
                            loadedState.question[0].optionOne));
                      },
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            loadedState.question[0].optionOne,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        questionBloc.add(AnswerClickedEvent(
                            loadedState.question[0].optionTwo));
                      },
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            loadedState.question[0].optionTwo,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        questionBloc.add(AnswerClickedEvent(
                            loadedState.question[0].optionThree));
                      },
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            loadedState.question[0].optionThree,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        questionBloc.add(AnswerClickedEvent(
                            loadedState.question[0].optionFour));
                      },
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            loadedState.question[0].optionFour,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight:
                              FontWeight.w500, // Specify the desired text size
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.green,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(370, 65)),

                        // Set the button's minimum size
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                //QuestionTile(questionModel: loadedState.question[0]),
              ),
            );
          default:
            return SizedBox();
        }
      },
    );
  }
}
