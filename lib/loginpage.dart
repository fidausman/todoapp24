import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Username",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Password",
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Forget password"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login")),
          Text("or"),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
              },
              child: Text("Signup")),
        ],
      ),
    );
  }
}
