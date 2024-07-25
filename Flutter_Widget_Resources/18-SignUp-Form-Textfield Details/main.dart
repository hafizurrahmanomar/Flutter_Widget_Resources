import 'package:flutter/material.dart';

void main() => (runApp(MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Text Field Practice",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController _phoneEditingController = TextEditingController();
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passwordEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  'Sing Up',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    //decoration: TextDecoration.underline,decorationColor: Colors.blue,decorationStyle: TextDecorationStyle.double
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(

                  children: [
                    TextFormField(
                      //enabled: false,
                      enabled: true,
                      maxLength: 30,
                      maxLines: 1,
                      cursorColor: Colors.blue,
                      cursorWidth: 2.0,
                      autocorrect: true,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      textAlign: TextAlign.left,

                      /*
                      onFieldSubmitted:(String value){
                        print(_textEditingController.text);
                        _textEditingController.clear();
                      },

                      */

                      /*
                      onTap: (){
                        /// To Do Here
                      },

                      onChanged: (String input){
                        print(input);
                      },


                       */

                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person_2_outlined,size: 25,color: Colors.blue,),
                        hintText: 'Enter Your Name',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                        label: const Text('Name'),
                        labelStyle: const TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),

                        /*  border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),

                        */



                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                            style: BorderStyle.solid,
                            //strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.green,
                            width: 2.0,
                            style: BorderStyle.solid,
                            //strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        // When Text field disable need,In the time => enabled: false, and below code comment out
                        /*
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2.0,
                            style: BorderStyle.solid,

                          ),
                        ),
                        */

                      ),
                    ),
                    TextField(
                      enabled: true,
                      maxLength: 15,
                      maxLines: 1,
                      cursorColor: Colors.blue,
                      cursorWidth: 2.0,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone_android_outlined,size: 25,color: Colors.blue,),
                        hintText: 'Enter Your Phone Number',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                        label: const Text('Phone'),
                        labelStyle: const TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                            style: BorderStyle.solid,
                            //strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.green,
                            width: 2.0,
                            style: BorderStyle.solid,

                          ),
                        ),

                      ),
                    ),
                    TextField(
                      enabled: true,
                      maxLength: 100,
                      maxLines: 1,
                      cursorColor: Colors.blue,
                      cursorWidth: 2.0,
                      autocorrect: true,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email_outlined,size: 25,color: Colors.blue,),
                        hintText: 'Enter Your Email',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                        label: const Text('Email'),
                        labelStyle: const TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                            style: BorderStyle.solid,
                            //strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.green,
                            width: 2.0,
                            style: BorderStyle.solid,

                          ),
                        ),

                      ),
                    ),
                    TextField(
                      enabled: true,
                      obscureText: true,
                      maxLength: 32,
                      maxLines: 1,
                      cursorColor: Colors.blue,
                      cursorWidth: 2.0,
                      autocorrect: true,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password_outlined,size: 25,color: Colors.blue,),
                        suffixIcon: const Icon(Icons.remove_red_eye_outlined,size: 25,color: Colors.blue,),
                        hintText: 'Enter Your Password',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                        label: const Text('Password'),
                        labelStyle: const TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),

                        enabledBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                            style: BorderStyle.solid,
                            //strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.green,
                            width: 2.0,
                            style: BorderStyle.solid,

                          ),
                        ),

                      ),
                    ),
                    ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ), child: const Text("Submit"),)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
