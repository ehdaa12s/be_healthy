import 'package:_BeHealthey/constant/constant.dart';
import 'package:_BeHealthey/new%20component/custom_button.dart';
import 'package:_BeHealthey/new%20component/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  static String id = 'SignUp';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? email;
  String? password;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Image(
                    image: AssetImage(
                      'assets/images/scholar.png',
                    ),
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
                    "Sign Up ",
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
                    onChanged: (data) {
                      email = data;
                    },
                    hintText: 'Email',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    onChanged: (data) {
                      password = data;
                    },
                    hintText: 'Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        try {
                          final userCredential = await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: email!, password: password!);
                          if (userCredential.user != null) {
                             Navigator.pushNamed(
                                context, 'BottomNavagetorBarScreen',
                                arguments: email);
                          }

                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text('The password provided is too weak.'),
                              ),
                            );
                          } else if (e.code == 'email-already-in-use') {


                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'The account already exists for that email.'),

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
                        if (kDebugMode) {
                          print('not valid');
                        }
                      }
                    },
                    text: 'Sign Up',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Login here',
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
