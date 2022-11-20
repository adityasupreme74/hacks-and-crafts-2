import 'package:connecto/styling/text_styles.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key}) : super(key: key);
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isObscure = true;

  void showPassword() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
      child: TextField(
        keyboardType: TextInputType.text,
        style: smallTextStyle,
        obscureText: isObscure,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            fillColor: Colors.white,
            filled: true,
            hintStyle: const TextStyle(
              fontSize: 18,
              color: Color(0x88585656),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            suffixIcon: GestureDetector(
              onTap: showPassword,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset(
                  'assets/icons/eye.png',
                  height: 19,
                ),
              ),
            ),
            suffixIconConstraints: const BoxConstraints(maxHeight: 19),
            hintText: 'Password'),
      ),
    );
  }
}
