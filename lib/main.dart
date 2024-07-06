import 'package:advance_exam2/provider/comments_provider.dart';
import 'package:advance_exam2/view/screen/Splashscreen.dart';
import 'package:advance_exam2/view/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => CommentsProvider(),
      builder: (context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splashscreen(),
      ),
    );
  }
}
