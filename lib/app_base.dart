import 'package:covid19cases/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class AppBase extends StatelessWidget {
  const AppBase();

  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: HomeScreen(),
  );
}
