import 'package:flutter/material.dart';
import 'package:testing_flutter/models/banking.dart';

class BankingLogin extends StatefulWidget {
  const BankingLogin({super.key});

  @override
  State<BankingLogin> createState() => _BankingLoginState();
}

class _BankingLoginState extends State<BankingLogin> {
  BankingAccount bankingAccount = BankingAccount();
  var pinCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
