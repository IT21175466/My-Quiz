import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
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
            //Spacer(),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "What is Dart?",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 23,
                ),
              ),
            ),
            Spacer(),
            Container(
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
                  "A programming language developed by Google.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
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
                  "A database management system",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
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
                  "A type of musical instrument",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
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
                  "An operating system",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
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
                  fontWeight: FontWeight.w500, // Specify the desired text size
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.green,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                minimumSize: MaterialStateProperty.all<Size>(Size(370, 65)),

                // Set the button's minimum size
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
