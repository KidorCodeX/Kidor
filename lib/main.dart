import 'package:flutter/material.dart';
import 'package:my_first_app/home_page.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "App bar", home: HomePage());
  }
}
