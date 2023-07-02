import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:my_quize/Home_Page/UI/HomePage.dart';

import '../bloc/paper_end_bloc.dart';

class PaperEndPage extends StatefulWidget {
  const PaperEndPage({super.key});

  @override
  State<PaperEndPage> createState() => _PaperEndPageState();
}

class _PaperEndPageState extends State<PaperEndPage> {
  PaperEndBloc paperEndBloc = PaperEndBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaperEndBloc, PaperEndState>(
      bloc: paperEndBloc,
      listenWhen: (previous, current) => current is PaperEndActionState,
      buildWhen: (previous, current) => current is! PaperEndActionState,
      listener: (context, state) {
        if (state is PaperEndActionState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Quiz Ended",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            backgroundColor: Colors.green,
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Lottie.network(
                    'https://assets3.lottiefiles.com/packages/lf20_mbznsnmf.json'),
                const SizedBox(
                  height: 25,
                ),
                const Center(
                  child: Text(
                    "Congratulations!",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Center(
                  child: Text(
                    "You Completed The Quiz Successfully.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    paperEndBloc.add(PaperEndPageNavigateToHomePage());
                  },
                  child: const Text(
                    "OK",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight:
                          FontWeight.w500, // Specify the desired text size
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll<Color>(
                      Colors.green,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    minimumSize:
                        MaterialStateProperty.all<Size>(const Size(370, 65)),

                    // Set the button's minimum size
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
