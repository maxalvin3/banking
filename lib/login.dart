import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPAge extends StatefulWidget {
  const LoginPAge({super.key});

  @override
  State<LoginPAge> createState() => _LoginPAgeState();
}

class _LoginPAgeState extends State<LoginPAge> {
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
                const SizedBox(height: 50),
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      hintText: 'Enter Username or Email',
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
                        text: "Don't have an account? ",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Register now!',
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
