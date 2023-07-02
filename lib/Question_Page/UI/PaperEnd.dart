import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PaperEndPage extends StatefulWidget {
  const PaperEndPage({super.key});

  @override
  State<PaperEndPage> createState() => _PaperEndPageState();
}

class _PaperEndPageState extends State<PaperEndPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz Ended",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Column(
          children: [
            Spacer(),
            //Lottie.network(
            //'https://assets3.lottiefiles.com/packages/lf20_mbznsnmf.json'),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                "Congratulations!",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "You Completed The Quiz Successfully.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "OK",
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
          ],
        ),
      ),
    );
  }
}
