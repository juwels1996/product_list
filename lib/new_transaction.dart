import 'package:flutter/material.dart';
class NewTransaction extends StatelessWidget {

  TextEditingController amountController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController idController =TextEditingController();

  final Function txTrans;

  NewTransaction(this.txTrans);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Put your title here:-",
            ),
            controller: titleController,
          ),
          TextField(
            controller: amountController,
            decoration: InputDecoration(
                labelText: "Put your value here:-"
            ),
          ),
          TextField(
            controller: idController,
            decoration: InputDecoration(
                labelText: "Put your id here:-"
            ),
          ),



          SizedBox(height: 12,),
          ElevatedButton(onPressed: (){
           txTrans(
             titleController.text,
             double.parse(amountController.text),
             idController.text,
           );
          },
              child: Text("Submit your value"))
        ],
      ),
    );
  }
}
