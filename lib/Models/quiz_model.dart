class QuestionModel {
  final String id;
  final String question;
  final String optionOne;
  final String optionTwo;
  final String optionThree;
  final String optionFour;
  final String correctAnswer;

  QuestionModel({
    required this.id,
    required this.question,
    required this.optionOne,
    required this.optionTwo,
    required this.optionThree,
    required this.optionFour,
    required this.correctAnswer,
  });
}
