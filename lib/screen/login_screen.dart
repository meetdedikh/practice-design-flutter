import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          width: size.width > 400
              ? 400
              : size.width, // Limit the width based on screen size
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome to My App",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(labelText: "Username"),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Password"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Implement your login logic here
                },
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
