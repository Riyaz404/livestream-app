// This is the login page with grient background
import 'package:flutter/material.dart';

import 'Alogin.dart';
import 'Ulogin.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 7, 54, 182),
              Color.fromARGB(255, 4, 156, 222)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              const Text("WELCOME TO RIYAZ TALKS",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Ulogin()));
                }),
                child: Text('user Login'),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 2, 0, 0)),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Alogin()));
                },
                child: Text('Admin Login'),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 19, 6, 6)),
              ),
              const SizedBox(
                height: 100,
              ),
              const Text('app is made for live streaming',
                  style: TextStyle(
                      color: Color.fromARGB(255, 243, 235, 235),
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              const Text('by RIYAZ SHAIK',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
