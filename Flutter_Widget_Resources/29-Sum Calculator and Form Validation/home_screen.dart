import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _firstNumberTEController =
      TextEditingController();
  final TextEditingController _secondNumberTEController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  double _result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Sum Calculator',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _firstNumberTEController,
                decoration: const InputDecoration(hintText: "First Number"),
                validator: (String? value) {
                  String v = value ?? '';
                  if (v.isEmpty) {
                    return 'Enter your First number';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _secondNumberTEController,
                validator: (String? value) {
                  String v = value ?? '';
                  if (v.isEmpty) {
                    return 'Enter your Second number';
                  }
                  return null;
                },
                decoration: const InputDecoration(hintText: "Second Number"),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            double firstNum = double.tryParse(
                                    _firstNumberTEController.text.trim()) ??
                                0;
                            double secondNum = double.tryParse(
                                    _secondNumberTEController.text.trim()) ??
                                0;
                            double result = add(firstNum, secondNum);
                            _result = result;
                            setState(() {});
                          }
                        },
                        child: const Text("Add")),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            double firstNum = double.tryParse(
                                    _firstNumberTEController.text.trim()) ??
                                0;
                            double secondNum = double.tryParse(
                                    _secondNumberTEController.text.trim()) ??
                                0;
                            double result = sub(firstNum, secondNum);
                            _result = result;
                            setState(() {});
                          }
                        },
                        child: const Text("Subs")),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: clear, child: const Text("Clear")),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Result: $_result',
                style: const TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void clear() {
    _firstNumberTEController.clear();
    _secondNumberTEController.clear();
    _result = 0;
    setState(() {});
  }

  double add(double firstNum, double secondNum) {
    return firstNum + secondNum;
  }

  double sub(double firstNum, double secondNum) {
    return firstNum - secondNum;
  }
}
