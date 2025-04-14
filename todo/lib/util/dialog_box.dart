import 'package:flutter/material.dart';
class DialogBox extends StatelessWidget{
  const DialogBox({
    super.key,
    
  });

  @override
  Widget build(BuildContext context){
    return AlertDialog(
      content: Container(
        height: 170,
        child: Column(
          children: [
            Text("Add a new task"),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your task here",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              onPressed: (){},
              child: Text("Add Task"),
            )
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Cancel"),
        ),
      ],
      backgroundColor: const Color.fromARGB(255, 237, 236, 209), // Use theme background color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: Text("Add a new task"),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      contentTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actionsPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      buttonPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}