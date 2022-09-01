import 'package:flutter/material.dart';
import 'package:flutterproject/mcq/mcq_questions.dart';

class MCQTest extends StatefulWidget {
  const MCQTest({super.key});

  @override
  State<MCQTest> createState() => _MCQTestState();
}

class _MCQTestState extends State<MCQTest> {
  int index = 0;
  bool isPressed = false;
  Color trueAnswer = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = const Color(0xFF117eeb);
  int score = 0;
  void nextquestion() {
    setState(() {
      index += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final n = ModalRoute.of(context)?.settings.arguments.toString();
    final name = n!.substring(1, n.length - 1);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            verticalDirection: VerticalDirection.down,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Question ${index + 1}/${questions.length}",
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(
                height: 10.0,
                color: Colors.grey,
                thickness: 1,
              ),
              const SizedBox(
                height: 35.0,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                 child : Text(
                questions[index].question!,
                style: const TextStyle(
                  fontSize: 28.0,
                ),
              ),),
              const SizedBox(
                height: 25.0,
              ),
              for (int i = 0; i < questions[index].answer.length; i++)
                Container(
                    
                    margin: const EdgeInsets.only(bottom: 20.0,left: 20.0),
                    child: MaterialButton(
                      minWidth: 400.0,
                      height: 50.0,
                      onPressed: () {
                        isPressed
                            ? () {}
                            : setState(() {
                                isPressed = true;
                              });
                        if (questions[index].answer.entries.toList()[i].value) {
                          score += 10;
                        }
                      },
                      
                      color: isPressed
                          ? questions[index].answer.entries.toList()[i].value
                              ? trueAnswer
                              : isWrong
                          : btnColor,
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Text(
                        questions[index].answer.keys.toList()[i],
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    height: 50.0,
                    minWidth: 40.0,
                    color: Colors.teal,
                    onPressed: isPressed
                        ? index + 1 == questions.length
                            ? () {
                                Navigator.of(context)
                                    .pushNamed('/result', arguments: [score,name]);
                              }
                            : () {
                                setState(() {
                                  nextquestion();
                                  isPressed = false;
                                });
                              }
                        : () {},
                    child: Text(
                      index + 1 == questions.length
                          ? "Submit"
                          : "Next Question",
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
