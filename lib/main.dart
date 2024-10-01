import 'package:facebook/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Fb());
}
class Fb extends StatelessWidget {
  const Fb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("FACEBOOK"),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body: Home(),
      ),
    );
  }
}


