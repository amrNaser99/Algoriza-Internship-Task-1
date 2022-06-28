import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: const BoxDecoration(color: Colors.black),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Welcome to Fashion Daily'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Sign In",
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
                              color: Colors.blue ,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(width: 2,),
                          Icon(Icons.help,color: Colors.blue,)
                        ],
                      ),

                    ],
                  ),
                  const Spacer(),

                  //TODO Phone Number Here
                  Container(
                    color: Colors.black,
                    width: double.infinity,
                    height: 100,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('OR',textAlign: TextAlign.center),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width:
                    MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.width *
                        0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[300],
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
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
                  const Spacer(),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
