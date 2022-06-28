import 'package:algoriza_task1/Registeration/login_screen.dart';
import 'package:algoriza_task1/Registeration/register_screen.dart';
import 'package:algoriza_task1/shared/components.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  bool isLast = false;

  List<BoardingModel> boardingList = [
    BoardingModel(
      image: 'assets/onb1.png',
      title: "Get Your Food Delivery To Your Doorstep Asap",
      body:
          "We Have Young And Professional delivery team that will Bring Your Food as soon as possible to your doorstep",
    ),
    BoardingModel(
      image: 'assets/onb2.png',
      title: "Buy Any Food From Your Favourite Restaurants",
      body:
          "We are Constantly adding your favourite Restaurant throughout the territory and around your area carefully selected",
    ),
    BoardingModel(
      title: "Pay for Food in Many Ways",
      body:
          "you can pay for food in many ways as you like either upon receipt or with visa",
      image: 'assets/onb3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.teal.shade50,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: IconButton(
                      onPressed: () {
                        NavigateTo(
                          context,
                          const LoginScreen(),
                        );
                      },
                      icon: const Text(
                        'SKIP',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.67,
                    child: PageView.builder(
                      itemBuilder: (context, index) =>
                          buildBoardingItem(context, boardingList[index]),
                      controller: pageController,
                      physics: const BouncingScrollPhysics(),
                      onPageChanged: (int index) {
                        if (index == boardingList.length - 1) {
                          setState(() {
                            isLast = true;
                          });
                        } else {
                          setState(() {
                            isLast = false;
                          });
                        }
                      },
                      itemCount: boardingList.length,
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: pageController,
                    effect: const ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colors.teal,
                      dotWidth: 10,
                      dotHeight: 10,
                      expansionFactor: 4,
                      spacing: 5,
                    ),
                    count: boardingList.length,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  mainButton(
                    context: context,
                    targetScreen: LoginScreen(),
                    text: 'Get Started',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t Have An Account?  ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          NavigateTo(context, RegisterScreen());
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({required this.image, required this.title, required this.body});
}

Widget buildBoardingItem(BuildContext context, BoardingModel model) =>
    Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            height: MediaQuery.of(context).size.height * 0.4,
            image: AssetImage(model.image),
          ),
          const Spacer(),
          Text(
            model.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            model.body,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 20.0,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
