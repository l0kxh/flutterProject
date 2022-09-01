import 'package:flutter/material.dart';

class TestResult extends StatefulWidget {
  const TestResult({super.key});

  @override
  State<TestResult> createState() => _TestResultState();
}

class _TestResultState extends State<TestResult> {
  @override
  Widget build(BuildContext context) {
    final n = ModalRoute.of(context)?.settings.arguments?.toString();
    final n1 = n!.substring(1, n.length - 1).split(" ");
    final score = n1[0].substring(0, n1[0].length - 1);
    final name = n1[1];
    return Center(
      child: Container(
        width: 0.7 * MediaQuery.of(context).size.width,
        height: 0.9 * MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
          ),
        ]),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          color: const Color.fromARGB(255, 238, 238, 234),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                'Certificate Of Completion',
                style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Great Vibes'),
              ),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                'This is to certify that',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto Mono'),
              ),
              const Divider(
                thickness: 1.0,
                height: 70.0,
              ),
              Text(
                name,
                style: const TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto Mono'),
              ),
              const SizedBox(
                height: 70.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'has successfully completed test and scored  ',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Roboto Mono'),
                  ),
                  Text(
                    "$score ",
                    style: const TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto Mono'),
                  ),
                  const Text(
                    'marks',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Great Vibes'),
                  ),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
