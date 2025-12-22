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
  DateTime startDate = DateTime(2025, 1, 1);
  DateTime endDate = DateTime(2026, 1, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'BankingApp',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: InputDatePickerFormField(
                firstDate: startDate,
                lastDate: endDate,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: FloatingActionButton.extended(
                onPressed: () => print('Button Pressed'),
                label: const Text('CLICK'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
