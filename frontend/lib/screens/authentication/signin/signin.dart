// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import '../signup/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool showPassword = true;
  IconData visibility = Icons.visibility;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UOMart',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 60),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const Text(
                  'Hello ',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: 320.0,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(20.0)),
                      ),
                      suffixIcon: const Icon(Icons.email),
                      hintText: 'Enter your email',
                      labelText: 'Email'),
                  // check the working  here (todo)
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter e-mail';
                    }
                    return null;
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: SizedBox(
                width: 320.0,
                child: TextFormField(
                  obscureText: showPassword,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(20.0)),
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            showPassword = !showPassword;
                            visibility == Icons.visibility
                                ? visibility = Icons.visibility_off
                                : visibility = Icons.visibility;
                          });
                        },
                        child: Icon(visibility),
                      ),
                      hintText: 'Enter your password',
                      labelText: 'Password'),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: SizedBox(
                width: 320,
                child: TextButton(
                  onPressed: () {
                    //forgot password screen
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/forgotpassword');
                  },
                  child: const Text(
                    'Forgot Password?',
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                FloatingActionButton.extended(
                  label: const Text('Sign In'),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(height: 30),
            Row(
              children: <Widget>[
                FloatingActionButton.extended(
                  icon: Image.asset('assets/images/google.jpeg',
                      height: 20, width: 30),
                  label: const Text('Sign in with Google'),
                  backgroundColor: Colors.white,
                  foregroundColor: const Color.fromARGB(255, 14, 10, 10),
                  onPressed: () {},
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(height: 12),
            Row(
              children: <Widget>[
                FloatingActionButton.extended(
                  icon: Image.asset('assets/images/apple.png',
                      height: 20, width: 30),
                  label: const Text('Sign in with Apple'),
                  backgroundColor: Colors.black,
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  onPressed: () {},
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(height: 28),
            Row(
              children: <Widget>[
                const Text("Don't have an account?"),
                TextButton(
                  child: const Text(
                    'Register here',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ]),
        ),
      ),
    );
  }
}
