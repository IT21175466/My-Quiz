import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_quize/Question_Page/UI/QuestionPage.dart';

import '../bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc homeBloc = HomeBloc();

  @override
  void initState() {
    homeBloc.add(HomeInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {
        if (state is CartButtonClickedNavigateActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => QuestionPage()));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeLoadingState:
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    print("object");
                  },
                  color: Colors.white,
                  icon: Icon(Icons.menu),
                ),
                title: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "My Quiz",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Let’s do quizzes and enjoy!",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.green,
              ),
              body: Center(
                child: Column(
                  children: [
                    Spacer(),
                    Text(
                      "Loading Your Quizes.....",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CircularProgressIndicator(),
                    Spacer(),
                  ],
                ),
              ),
            );

          case HomeLoadedState:
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    print("object");
                    homeBloc.add(CardNavigateToQuestionPageEvent());
                  },
                  color: Colors.white,
                  icon: Icon(Icons.menu),
                ),
                title: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "My Quiz",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Let’s do quizzes and enjoy!",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.green,
              ),
              body: SingleChildScrollView(
                child: Container(
                  color: Color.fromARGB(255, 238, 237, 237),
                  width: double.infinity,
                  height: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "My All Quizzes",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: ListTile(
                            leading: Icon(Icons.quiz),
                            title: Text(
                              "Social Media Quiz",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text("Time Duration 40 Min"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.adaptive.arrow_forward),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: ListTile(
                            leading: Icon(Icons.quiz),
                            title: Text(
                              "Social Media Quiz",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text("Time Duration 30 Min"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.adaptive.arrow_forward),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: ListTile(
                            leading: const Icon(Icons.quiz),
                            title: const Text(
                              "Social Media Quiz",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: const Text("Time Duration 30 Min"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.adaptive.arrow_forward),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          default:
            return SizedBox();
        }
      },
    );
  }
}
