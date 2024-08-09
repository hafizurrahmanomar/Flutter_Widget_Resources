import 'package:flutter/material.dart';

import 'todo.dart';



class AddNewTodoScreen extends StatefulWidget {
  const AddNewTodoScreen({super.key});

  @override
  State<AddNewTodoScreen> createState() => _AddNewTodoScreenState();
}

class _AddNewTodoScreenState extends State<AddNewTodoScreen> {
  ///custom
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _titleTEController =TextEditingController();
  final TextEditingController _describtionTEController =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo New List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: _titleTEController,
                decoration: const InputDecoration(
                  hintText: "Title",
                ),
                validator: (String? value) {
                  final v = value ?? "";
                  if (v.trim().isEmpty) {
                    return "Enter Your Title";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _describtionTEController,
                maxLines: 5,
                maxLength: 120,
                decoration: const InputDecoration(
                  hintText: "Description",
                ),
                validator: (String? value) {
                  if (value?.trim().isEmpty ?? true) {
                    return "Enter Your Description";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        //Todo todo =Todo(_titleTEController.text.trim(),_describtionTEController.text.trim(),DateTime.now());
                      }
                      Navigator.pop(context,Todo(_titleTEController.text.trim(),_describtionTEController.text.trim(),DateTime.now()),);
                    },
                    child: const Text("Add")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
