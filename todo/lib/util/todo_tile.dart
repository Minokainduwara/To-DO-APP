import 'package:flutter/material.dart';
class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;

  Function(bool?)? onChanged;
  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0,right: 25.0,top: 25),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(color:const Color.fromARGB(255, 21, 240, 229)),
        child: Row(
          children: [
            //Checkbox
            Checkbox(value: taskCompleted, onChanged: onChanged,activeColor: Colors.blueAccent,),
            //Task Name
            Text(
              taskName,
              style: TextStyle(
                color: Colors.black,
                decoration: taskCompleted? TextDecoration.lineThrough : TextDecoration.none,
              ),
            ),
            
          ],
        ),
      )
      
    );
  }
}