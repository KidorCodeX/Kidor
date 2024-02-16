import 'package:flutter/material.dart';
import 'package:my_first_app/ar_portal_page.dart';
import 'package:my_first_app/user_profile_page.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "App bar", home: UserProfile());
  }
}
