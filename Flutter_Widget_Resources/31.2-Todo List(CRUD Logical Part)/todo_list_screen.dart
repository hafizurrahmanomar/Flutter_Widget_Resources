import 'package:flutter/material.dart';


import '../31.1-Todo List(CRUD Application Design)/add_new_todo_screen.dart';
import '../31.1-Todo List(CRUD Application Design)/edit_todo_screen.dart';
import 'todo.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  /// Custom
  List<Todo> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("Todo List"),
      ),
      body: Visibility(
        visible: todoList.isNotEmpty,
        replacement: const Center(child: Text(" Todo List Is Empty!"),),
        child: ListView.separated(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return _buildListTodoTile(index);
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
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.lightBlueAccent,
        onPressed: onTapNewTodoFAB,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
/// Extract Method(Ctr+R,M)
  ListTile _buildListTodoTile(int index) {
    return ListTile(
            title: Text(todoList[index].title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(todoList[index].description),
                Text(todoList[index].dateTime.toString()),
              ],
            ),
            trailing: Wrap(
              children: [
                IconButton(
                  onPressed: () => showDeleteConfirmationDialog(index),
                  icon: const Icon(Icons.delete_forever),
                ),
                IconButton(
                  onPressed: () => onTapUpdatedTodo(index),
                  icon: const Icon(Icons.edit),
                ),
              ],
            ),
          );
  }

  ///  Code Refactoring

  Future<void> onTapUpdatedTodo(int index) async {
    final Todo? updatedTodo = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditTodoScreen(
          todo: todoList[index],
        ),
      ),
    );
    if (updatedTodo != null) {
      todoList[index] = updatedTodo;
      setState(() {});
    }
  }

  Future<void> onTapNewTodoFAB() async {
    final Todo? result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddNewTodoScreen(),
      ),
    );
    if (result != null) {
      todoList.add(result);
      setState(() {});
    }
  }

  void showDeleteConfirmationDialog(int index) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.amberAccent,
            elevation: 7,
            title: const Text("To Do List"),
            content: (const Text("'Are you sure you want to delete'")),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              ),
              TextButton(
                onPressed: () {
                 _removeTodo(index);
                  Navigator.pop(context);
                },
                child: const Text(
                  "Yes,Delete",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          );
        });
  }

  void _removeTodo (int index){
  todoList.removeAt(index);
  setState(() {});
}
}
