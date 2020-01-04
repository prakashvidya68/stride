import 'package:flutter/material.dart';

class TransactionDetailElement extends StatelessWidget {
  final int val;
  final double amount;
  const TransactionDetailElement({
    this.val,
    this.amount,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.attach_money),
            val == 1
                ? Text(
                    amount.toStringAsFixed(2),
                    style: TextStyle(
                        fontSize: 28,
                        color: Color(0xFF5678C1),
                        fontWeight: FontWeight.bold),
                  )
                : val == 2
                    ? Text(
                        amount.toStringAsFixed(2),
                        style: TextStyle(
                            fontSize: 28,
                            color: Color(0xFFF28649),
                            fontWeight: FontWeight.bold),
                      )
                    : Text(
                        amount.toStringAsFixed(2),
                        style: TextStyle(
                            fontSize: 28,
                            color: Color(0xFFD3CA77),
                            fontWeight: FontWeight.bold),
                      )
          ],
        ),
        val == 1
            ? Text(
                "Coins Earned",
                style: TextStyle(
                    fontFamily: 'Poppins',fontSize: 13, fontWeight: FontWeight.w100),
              )
            : val == 2
                ? Text(
                    "Total Spent Coins",
                    style: TextStyle(
                        fontFamily: 'Poppins',fontSize: 13, fontWeight: FontWeight.w100),
                  )
                : Text(
                    "Current Balance",
                    style: TextStyle(
                        fontFamily: 'Poppins', fontSize: 13, fontWeight: FontWeight.w100),
                  )
      ],
    );
  }
}