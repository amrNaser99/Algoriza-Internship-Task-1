import 'package:algoriza_task1/Registeration/login_screen.dart';
import 'package:algoriza_task1/shared/components.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

import '../main_screen.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.20,
              decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/ph.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.80,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text('Welcome to Fashion Daily'),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const Spacer(),
                          Row(
                            children: const [
                              Text(
                                "Help",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.help,
                                color: Colors.blue,
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      defaultTextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        labelText: 'Email ',
                        hintText: 'Ex: Amrnaserr1@gmail.com',
                        prefixIcon: Icons.email_outlined,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      PhoneFormField(
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      defaultTextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        labelText: 'Password',
                        prefixIcon: Icons.password_outlined,
                        isPassword: true,
                        suffixIcon: Icons.remove_red_eye_rounded,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      mainButton(
                        context: context,
                        targetScreen: const MainScreen(),
                        text: 'Sign In',
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('OR', textAlign: TextAlign.center),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.width * 0.12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[300],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CircleAvatar(
                                  backgroundColor: Colors.white24,
                                  child: Image(
                                    image: AssetImage('assets/google_logo.png'),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'Sign in By Google',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t Have An Account? ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              NavigateTo(context, LoginScreen());
                            },
                            child: const Text(
                              'Sign In Here',
                              style: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                          'Use The Application According to Policy rules.'
                          '\n Any Kinds of validations will be subject to sanction',
                          textAlign: TextAlign.center),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
