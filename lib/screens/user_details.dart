import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<UserDetails> {
  String name = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.teal,
        ),
        width: 300.0,
        height: 400.0,
        padding: const EdgeInsets.all(30.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 0.2 * MediaQuery.of(context).size.width,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter Username',
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: 0.2 * MediaQuery.of(context).size.width,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter Email',
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                      width: 1.0,
                      // color: Colors.teal,
                    )),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              MaterialButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pushNamed('/test',arguments: [name]);
                },
                child: const Text('Take Test'),
              )
            ]),
      ),
    ));
  }
}
