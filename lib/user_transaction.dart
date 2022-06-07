import 'package:flutter/material.dart';
import 'package:product_list/new_transaction.dart';
import 'package:product_list/transaction.dart';
import 'package:product_list/transaction_list.dart';
class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  List<Transaction> usertransaction = [
    Transaction(
        id: "12",
        title: "Easy merun Tshirt",
        price: 69.97,
        date: DateTime.now()
    ),
    Transaction(
        id: "13", title: "Easy shirt", price: 87.97, date: DateTime.now()),
    Transaction(
        id: "14", title: "  Bata Shoes", price: 30.57, date: DateTime.now()),
    Transaction(
        id: "15", title: "Naviforce Watch", price: 68.89, date: DateTime.now()),
  ];
  void _addNewTransaction(String transTitle,double transAmount,String ids){
    final newtrans=Transaction(id:ids ,
        title: transTitle,
        price: transAmount,
        date: DateTime.now()
    );
    setState(() {
      usertransaction.add(newtrans);
    });
  }
  @override

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(usertransaction),

      ],
    );
  }
}
