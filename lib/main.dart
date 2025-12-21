import 'package:flutter/material.dart';
import 'package:testing_flutter/screens/bankingLogin.dart';

void main() {
  runApp(MaterialApp(home: BankingApp(), debugShowCheckedModeBanner: false));
}

class BankingApp extends StatelessWidget {
  const BankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BankingLogin();
  }
}
