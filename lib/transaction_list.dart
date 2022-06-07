import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:product_list/transaction.dart';

class TransactionList extends StatelessWidget {

  final List<Transaction>transaction;
  TransactionList(this.transaction);


  @override
  Widget build(BuildContext context) {
    return Column(
        children:transaction.map((e) {
          return Card(
              elevation: 5,
              shadowColor: Colors.tealAccent,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(e.title),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\id--${e.id}',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange)),
                        Text(
                          '\$${e.price}',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(DateFormat().format(e.date,),style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      ],
                    )
                  ],
                ),
              ));
        }).toList()
    );
  }
}
