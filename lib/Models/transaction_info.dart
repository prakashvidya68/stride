import 'package:flutter/cupertino.dart';

class TransactionInfo{
  final String transactionTitle;
  final String transactionTime;
  final double amountOfTransaction;
  final bool hasSpent;
  final bool hasRecieved;
  final bool hasBeenAwarded;

  const TransactionInfo({
    @required this.transactionTitle,
    @required this.transactionTime,
    @required this.amountOfTransaction,
    @required this.hasSpent,
    @required this.hasRecieved,
    @required this.hasBeenAwarded,
  });
  
}