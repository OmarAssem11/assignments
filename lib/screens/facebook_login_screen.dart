import 'package:assignments/screens/facebook_home_screen.dart';
import 'package:flutter/material.dart';

class FacebookLoginScreen extends StatelessWidget {
  const FacebookLoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3B5999),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            const Spacer(),
            const Icon(
              Icons.facebook,
              color: Colors.white,
              size: 80,
            ),
            const SizedBox(height: 45),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Email or Phone',
                hintStyle: TextStyle(
                  color: Colors.white60,
                  fontSize: 23,
                ),
                labelStyle: TextStyle(
                  color: Colors.white60,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white60),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.white60,
                  fontSize: 23,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white60),
                ),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xff4E68A1),
                ),
                shape:
                    MaterialStateProperty.all(const RoundedRectangleBorder()),
                fixedSize: MaterialStateProperty.all(
                  const Size(320, 50),
                ),
              ),
              onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const FacebookHomeScreen(),
                ),
              ),
              child: const Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white60,
                ),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Sign up For Facebook',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
