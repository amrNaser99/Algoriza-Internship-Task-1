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
      padding: padding = EdgeInsets.zero ,
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


Widget defaultTextFormField({
  required TextEditingController controller,
  required TextInputType keyboardType,
  required String? labelText,
  String? hintText,
  required IconData prefixIcon,
  FormFieldValidator<String>? validate,
  IconData? suffixIcon,
  void Function(String)? onSubmitted,
  void Function(String)? onChanged,
  void Function()? onTap,
  void Function()? suffixPressed,
  bool isPassword = false,
  double radius = 10.0,
  Color? focusColor,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPassword,
      decoration: InputDecoration(
        focusColor: focusColor,
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
        prefixIcon: Icon(prefixIcon),
        hintText: hintText,
        suffixIcon: suffixIcon != null
            ? IconButton(
          icon: Icon(suffixIcon),
          onPressed: suffixPressed,
        )
            : null,
      ),
      onChanged: onChanged,
      onTap: onTap,
      validator: validate,
      onFieldSubmitted: onSubmitted,
    );