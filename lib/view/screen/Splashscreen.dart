import 'package:advance_exam2/view/screen/homepage.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: InkWell(onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage(),));
        },
        child: Image.asset('assets/logo.png')),
      ),
    );
  }
}
