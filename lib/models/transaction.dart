import 'package:testing_flutter/constants/transaction_type.dart';
import 'package:flutter/foundation.dart';

@immutable
class Transaction {
  final double amount;
  final TransactionType transactionType;
  final DateTime date;

  const Transaction(this.amount, this.transactionType, this.date);
}
