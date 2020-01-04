import 'package:flutter/material.dart';
import 'package:stride/dummyData.dart';
import 'package:stride/widgets/nestedTabBar.dart';
import '../widgets/transaction_detail_element.dart';

class TransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TransactionDetailElement(
                  val: 1,
                  amount: dummyUserCoins.earned,
                ),
                TransactionDetailElement(
                  val: 2,
                  amount: dummyUserCoins.spent,
                ),
                TransactionDetailElement(
                  val: 3,
                  amount: dummyUserCoins.earned-dummyUserCoins.spent,
                ),
              ],
            ),
          ),
        ),
        NestedTabBar()
        

      ],
    ));
  }
}


