class QuestionModel {
  String? question;
  Map<String, bool> answer;
  QuestionModel(this.question, this.answer);
}


List<QuestionModel> questions = [
  QuestionModel("Is Python code compiled or interpreted?", {
    " Python code is both compiled and interpreted": false,
    "Python code is neither compiled nor interpreted": true,
    "Python code is only compiled": false,
    "Python code is only interpreted": false,
  }),
  QuestionModel(
      "Which of the following is the correct extension of the Python file?", {
    ".Python": false,
    ".pl": false,
    ".py": true,
    ".p": false,
  }),
  QuestionModel("All keywords in Python are in _________", {
    "Capitalized": false,
    "lower case": false,
    "UPPER CASE": false,
    "None of the mentioned": true,
  }),
  QuestionModel(
      "Which of the following is used to define a block of code in Python language?",
      {
        "Indentation": true,
        "Key": false,
        "Brackets": false,
        "All of the mentioned": false,
      }),
  QuestionModel("Which keyword is used for function in Python language?", {
    "Function": false,
    "def": true,
    "Fun": false,
    "define": false,
  }),
  QuestionModel(
      "Which of the following character is used to give single-line comments in Python?",
      {
        " //": false,
        " #": true,
        " /*": false,
        " !": false,
      }),
  QuestionModel(
      "Which of the following functions is a built-in function in python?", {
    "factorial()": false,
    "print()": true,
    "seed()": false,
    "sqrt()": false,
  }),
  QuestionModel(
      "What arithmetic operators cannot be used with strings in Python?", {
    " * ": false,
    " + ": false,
    " - ": true,
    "All of the mentioned": false,
  }),
  QuestionModel(
      "Which of the following statements is used to create an empty set in Python?",
      {
        " [] ": false,
        " {} ": false,
        " () ": false,
        " set() ": true ,
      }),
  QuestionModel("To add a new element to a list we use which Python command?", {
    " list1.addEnd(5)": false,
    "list1.addLast(5)": false,
    "list1.append(5)": true,
    "list1.add(5)": false,
  }),
];
