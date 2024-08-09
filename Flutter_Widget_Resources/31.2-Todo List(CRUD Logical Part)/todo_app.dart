import 'package:flutter/material.dart';


import '../31.1-Todo List(CRUD Application Design)/todo_list_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TodoListScreen(),
      theme: ThemeData(
        colorSchemeSeed: Colors.lightBlueAccent,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.lightBlueAccent),
          borderRadius: BorderRadius.circular(8),
        ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.lightBlueAccent),
            borderRadius: BorderRadius.circular(8),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.orange),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(

          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
            backgroundColor: Colors.deepPurple,
            padding: const EdgeInsets.symmetric(vertical: 12),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),

      ),
    );
  }
}
