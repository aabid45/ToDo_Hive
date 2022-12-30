import 'package:flutter/material.dart';
import 'package:todo_hive/buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onAdd;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onAdd,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[600],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                 border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Add a new task',        
              ),
            ),
            //we'll create buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,  
              children: [
                // add button
                MyButton(text: 'Add', onPressed: onAdd),
                const SizedBox(
                  width: 8,
                ),
                // cancel button
                MyButton(text: 'Cancel', onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
