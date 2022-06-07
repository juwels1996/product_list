import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_list/new_transaction.dart';
import 'package:product_list/transaction_list.dart';
import 'package:product_list/transaction_list.dart';
import 'package:product_list/user_transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  String ?titleInput;
  String ?amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.tealAccent,
            margin: EdgeInsets.all(6),
            shadowColor: Colors.grey,
            elevation: 5,
            child: Text("Show Product details"),
          ),
          UserTransaction()



        ],
      ),
    );
  }
}
