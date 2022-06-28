import 'package:flutter/material.dart';

Widget mainButton({
  required BuildContext context,
  required Widget targetScreen,
  Color color = Colors.teal,
  required String text,
  double width = double.infinity,
  double? height,
  EdgeInsetsGeometry? padding,
}) =>
    Padding(
      padding: padding = EdgeInsets.symmetric(horizontal: MediaQuery
          .of(context)
          .size
          .width * 0.05),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: MaterialButton(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            NavigateTo(context, targetScreen);
          },
        ),
      ),
    );

void NavigateTo(BuildContext context, Widget widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void NavigateAndFinish(context, Widget widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) => false);
