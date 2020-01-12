import 'package:flutter/material.dart';
import 'package:stride/dummyData.dart';

class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  TabController _nestedTabController;

  @override
  void initState() {
    super.initState();

    _nestedTabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          controller: _nestedTabController,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black54,
          // isScrollable: true,
          tabs: <Widget>[
            Tab(
              text: "All",
            ),
            Tab(
              text: "Spent",
            ),
            Tab(
              text: "Recieved",
            ),
            Tab(
              text: "Rewards",
            )
          ],
        ),
        Container(
          height: screenHeight * 0.70,
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          child: TabBarView(
            controller: _nestedTabController,
            children: <Widget>[
              Container(
                child: ListView.builder(
                    itemCount: dummyTransactionInfo.length,
                    itemBuilder: (ctx, index) {
                      return AllTransaction(index:index);
                    }),
              ),
              Container(
                child: ListView.builder(
                    itemCount: dummyTransactionInfo.length,
                    itemBuilder: (ctx, index) {
                      return SpentTransaction(index:index);
                    }),
              ),
              Container(
                child: ListView.builder(
                    itemCount: dummyTransactionInfo.length,
                    itemBuilder: (ctx, index) {
                      return RecievedTransaction(index:index);
                    }),
              ),
              Container(
                child: ListView.builder(
                    itemCount: dummyTransactionInfo.length,
                    itemBuilder: (ctx, index) {
                      return RewardedTransaction(index:index);
                    }),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class RewardedTransaction extends StatelessWidget {
  final int index;
  const RewardedTransaction({
    this.index,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.attach_money),
          ),
          title: Text(dummyTransactionInfo[index].transactionTitle),
          subtitle: Text(dummyTransactionInfo[index].transactionTime),
          trailing: Text(
            dummyTransactionInfo[index].amountOfTransaction.toStringAsFixed(2),
          ),
        ),
        Divider()
      ],
    );
  }
}

class RecievedTransaction extends StatelessWidget {
  final int index;
  const RecievedTransaction({
    Key key, this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.attach_money),
          ),
          title: Text(dummyTransactionInfo[index].transactionTitle),
          subtitle: Text(dummyTransactionInfo[index].transactionTime),
          trailing: Text(
            dummyTransactionInfo[index].amountOfTransaction.toStringAsFixed(2),
          ),
        ),
        Divider()
      ],
    );
  }
}

class SpentTransaction extends StatelessWidget {
  final int index;
  const SpentTransaction({
    Key key, this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.attach_money),
          ),
          title: Text(dummyTransactionInfo[index].transactionTitle),
          subtitle: Text(dummyTransactionInfo[index].transactionTime),
          trailing: Text(
            dummyTransactionInfo[index].amountOfTransaction.toStringAsFixed(2),
          ),
        ),
        Divider()
      ],
    );
  }
}

class AllTransaction extends StatelessWidget {
  final int index;
  const AllTransaction({
    Key key, this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.attach_money),
          ),
          title: Text(dummyTransactionInfo[index].transactionTitle),
          subtitle: Text(dummyTransactionInfo[index].transactionTime),
          trailing: Text(
            dummyTransactionInfo[index].amountOfTransaction.toStringAsFixed(2),
          ),
        ),
        Divider()
      ],
    );
  }
}
