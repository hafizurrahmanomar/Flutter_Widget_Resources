import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ThemeDataPage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        fontFamily: 'Roboto',
        colorSchemeSeed: Colors.blue,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
//hintStyle: TextStyle(color: Colors.grey.shade400),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.green, width: 2)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.green, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.blueAccent, width: 2)),
          labelStyle: const TextStyle(fontSize: 16),
          hintStyle: TextStyle(color: Colors.purple.shade200),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        textTheme: const TextTheme(
          bodySmall: TextStyle(fontSize: 20),
          titleLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          titleMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          titleSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            //backgroundColor: AppColors.themeColor,
            backgroundColor: Colors.deepPurple,
            padding: const EdgeInsets.symmetric(vertical: 12),
            // foregroundColor: AppColors.white,
            foregroundColor: Colors.white,
            //fixedSize: const Size.fromWidth(double.maxFinite),
            fixedSize: const Size(160, 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey,
            textStyle: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        chipTheme: ChipThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),

/*
      darkTheme:ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
      ),
      //themeMode: ThemeMode.dark,

 */
    );
  }
}

class ThemeDataPage extends StatefulWidget {
  const ThemeDataPage({super.key});

  @override
  State<ThemeDataPage> createState() => _ThemeDataPageState();
}

class _ThemeDataPageState extends State<ThemeDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text("Theme Data")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("This is Theme Data "),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {}, child: const Text("Theme Data Button"))
        ],
      ),
    );
  }
}
