import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'constants.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: kFontColor,
          ),
        ),
        appBarTheme: const AppBarTheme(
            color: kPrimaryColor,
            titleTextStyle: TextStyle(
                color: Color(0xFFF4EDED),
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'BespokeSlab')),
      ),
      home: const InputPage(),
    );
  }
}
