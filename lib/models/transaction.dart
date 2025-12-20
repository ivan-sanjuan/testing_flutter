import 'package:testing_flutter/constants/transaction_type.dart';

class Transaction {
  final DateTime timestamp;
  final TransactionType transactionType;
  final double amount;

  Transaction(this.timestamp, this.transactionType, this.amount);
}
