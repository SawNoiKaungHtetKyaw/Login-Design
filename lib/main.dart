import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 4, 31, 37),
        body: Center(
          child: Container(
            width: 350,
            height: 270,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Log in",
                  style: TextStyle(
                      color: Color.fromARGB(255, 19, 19, 19),
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),

                const SizedBox(
                  height: 10,
                ),

                // Textfield input box
                _inputBox("recoding323@gmail.com", Colors.grey.shade400),
                _inputBox(
                    "************", const Color.fromARGB(255, 50, 194, 238)),

                //Login Btn
                Container(
                  width: 300,
                  height: 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 50, 194, 238),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),

                //Signup Text
                const Center(
                  child: Text(
                    "or,sign up",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

// Input Box
  Widget _inputBox(String text, Color color) {
    return Container(
      width: 300,
      height: 40,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(5)),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }
}
