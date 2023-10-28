import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 71, 80),
      body: ListView(
        children: [
          Container(
            width: 380,
            // color: Colors.amber,
            child: Column(
              children: [
                const SizedBox(height: 80),
                Image.asset('img/logo-r.png', width: 200),
                const Text(
                  'Rave Transaction app',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Signup',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      hintText: 'Enter Email',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      hintText: 'Enter Username',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Already have an account? ",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Login',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('next page');
                                },
                              style: const TextStyle(color: Colors.blue)),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
