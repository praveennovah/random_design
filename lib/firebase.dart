import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:random_design/homepage.dart';

class firebase extends StatefulWidget {
  const firebase({super.key});

  @override
  State<firebase> createState() => _firebaseState();
}

TextEditingController EmailController = TextEditingController();
TextEditingController PasswordController = TextEditingController();

class _firebaseState extends State<firebase> {
  void dispose() {
    EmailController.dispose();
    PasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FireBase Demo"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: EmailController,
            decoration: InputDecoration(labelText: "Email"),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            controller: PasswordController,
            decoration: InputDecoration(labelText: "Password"),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: EmailController.text.trim(),
                  password: PasswordController.text.trim());
            },
            child: Text("Signup"),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: EmailController.text.trim(),
                  password: PasswordController.text.trim());
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => homepage())));
            },
            child: Text("Login"),
          )
        ],
      ),
    );
  }
}
