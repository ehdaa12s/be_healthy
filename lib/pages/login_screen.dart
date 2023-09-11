import 'package:_BeHealthey/constant/constant.dart';
import 'package:_BeHealthey/new%20component/custom_button.dart';

import 'package:_BeHealthey/new%20component/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String id = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email;
  String? password;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        backgroundColor: kprimaryColor,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Image(
                    image: AssetImage('assets/images/scholar.png'),
                    height: 100,
                  ),
                  const Text(
                    "Be Healthy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontFamily: 'pacifio',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Login ",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontFamily: 'pacifio',
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                    onChanged: (value) {
                      email = value;
                    },
                    hintText: 'Email',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    onChanged: (value) {
                      password = value;
                    },
                    hintText: 'Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        try {
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                            email: email!,
                            password: password!,
                          );
                          Navigator.pushNamed(context, 'BottomNavagetorBarScreen');

                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('no user found for that email'),
                              ),
                            );
                          } else if (e.code == 'wrong-password') {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Wrong password provided for that user '),
                              ),
                            );
                          }
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(''
                                  'there is an error'),
                            ),
                          );
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(''
                                'there is an error'),
                          ),
                        );
                      }
                    },
                    text: 'Login',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'SignUp');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.lightBlue[800],
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
