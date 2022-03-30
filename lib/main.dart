import 'package:flutter/material.dart';
import 'screens/login.dart';

void main() {
  runApp(const ExchangeApp());
}

class ExchangeApp extends StatelessWidget {
  const ExchangeApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: LogInScreen(),
    );
  }
}
