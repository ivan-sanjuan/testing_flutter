import 'package:flutter/material.dart';
import 'package:testing_flutter/constants/transaction_type.dart';

@immutable
class Transaction {
  final TransactionType type;
  final double amount;
  final DateTime date;

  const Transaction(this.type, this.amount, this.date);
}
