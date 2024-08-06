import 'package:flutter/material.dart';
import 'package:flutter_widget_resources/add_new_todo_screen.dart';
import 'package:flutter_widget_resources/edit_todo_screen.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("Todo List"),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: const Text("Todo Title"),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Todo Body"),
                Text("Time"),
              ],
            ),
            trailing: Wrap(
              children: [
                IconButton(
                  onPressed: showDeleteConfirmationDialog,
                  icon: const Icon(Icons.delete_forever),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditTodoScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.edit),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            indent: 10,
            endIndent: 10,
            height: 12,
            color: Colors.blue.shade100,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.lightBlueAccent,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddNewTodoScreen()));
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
/// Code Refactoring
  void showDeleteConfirmationDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.amberAccent,
            elevation: 7,
            title: const Text("To Do List"),
            content: (const Text("'Are you sure you want to delet'")),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Yes,Delete",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          );
        });
  }
}
