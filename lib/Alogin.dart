import 'package:flutter/material.dart';
import 'package:riyaz_talks/Hostlive.dart';

class Alogin extends StatelessWidget {
  const Alogin({super.key});

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
            child: Column(children: [
              const SizedBox(
                height: 200,
              ),
              Text(
                'Admin Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HostLive()));
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 10, 10, 10)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text('Forgot Password?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ]),
          )),
    );
  }
}
