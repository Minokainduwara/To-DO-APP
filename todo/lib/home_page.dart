import 'package:flutter/material.dart';
import 'package:todo/util/dialog_box.dart';
import 'package:todo/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List of cards
  List toDoList = [
    ["Good luck my Princess 😘",false],
    ["Do your best ☺️.",false],
    ["But Also take care of yourself 🥺",false],
    ["I love you so much 😘❤️.",false],

  ];

  //Checkbox was tapped
  void checkboxChanged(bool? value, int index){
    setState(() {
      toDoList[index][1] = value!;
    });

  }

  //Create new task
  void createNewTask(){
    showDialog(
      context: context,
      builder: (context){
        return DialogBox();
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 236, 209), // Use theme background color
      appBar: AppBar(
        title: Text("TO DO"),
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary, // Apply theme color
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Theme.of(context).colorScheme.primary, // Apply theme color
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkboxChanged(value, index),
          );
        },

      ),
    );
  }
}
