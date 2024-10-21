import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static Route route() => MaterialPageRoute(
        builder: (context) => const HomePage(),
      );

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text("Home Page"),
    ));
  }
}
