import 'package:flutter/material.dart';
import 'package:flutterproject/screens/mcqtest.dart';
import 'package:flutterproject/screens/result.dart';
import 'package:flutterproject/screens/user_details.dart';

void main() {
  runApp(MaterialApp(
    title: "MCQ Test",
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    home: const HomePage(),
    routes: {
      '/userdetails' : (context) => const UserDetails(),
      '/test': (context) => const MCQTest(),
      '/result' : (context) => const TestResult(),
    },
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? _value = false;
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView( child : Column(
            children: [
              const Text(
                "Rules and Regulations",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(
                height: 10.0,
                thickness: 1.0,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                "Please read carefully these terms of use and if you do not accept them, do not use this website or service.\n\nBy using the website and service, you are indicating your acceptance to be bound by these terms of use.\n\nAll contents on the website Defence Career Academy Online Exams Portal is about the exams of Indian Navy, Indian Air Force, Para Military Forces, Indian Army, Police Force and other services You will be updated with all information of these exams and the things you need to do for selection there.\n\nMany of the candidates got selected there after the guidance of the academy. There are no specific terms and condition but you will not get any refund of submitted fees of these exams.\n\nThe all exams that you will be attempt for the particular post are too difficult to clear it out. Withthe guidance of this academy, the candidates are able to clear with the good marks.\n\nSo don’t think much but be ready for the hard work to get success. If the candidate has any enquiry or has any problem with the questions or exam paper, then they can give their feedback to us through the website. We will analyze everything about the exam paper if you have any problem related to it.\n\nYou are responsible for maintaining the confidentiality of your password and information. You will be responsible for all uses of your registration, whether it is not authorized by you.\n\nYou agree to immediately notify the company of any unauthorized use of your password or registration. Wecommunicate with you by email and you will notify by our website about the date or anything else.",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Checkbox(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          isPressed = false;
                          _value = value;
                        });
                      }),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text(
                    'By clicking this you will agree to the terms and conditions.',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Column(
                  children: [
                    Text(
                      isPressed ? "Click on checkbox" : "",
                      style: const TextStyle(color: Colors.red),
                    ),
                    MaterialButton(
                      color: Colors.teal,
                      height: 40.0,
                      minWidth: 140.0,
                      shape: const StadiumBorder(),
                      onPressed: _value!
                          ? () {
                              Navigator.pushNamed(context, '/userdetails');
                            }
                          : () {
                              setState(() {
                                isPressed = true;
                              });
                            },
                      child: const Text(
                        "Start Test",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ]),
            ],
          )),)
    );
  }
}
