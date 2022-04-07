import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final String? hintText;
  final bool obscureText;
  final IconData? icon;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;

  const CustomTextField(
      {Key? key,
      this.controller,
      this.textInputAction,
      this.keyboardType,
      this.validator,
      this.hintText,
      this.obscureText = false,
      this.icon, this.suffixIcon, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        onChanged: onChanged,
        controller: controller,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        validator: validator,
        obscureText: obscureText,
        style: TextStyle(color: Colors.black87,fontSize: 18),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          prefixIcon: Container(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            margin: const EdgeInsets.only(right: 8),
            child: Icon(
              icon,
              color: Colors.lightGreen,
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      50,
                    ),
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
          ),
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: Colors.white.withOpacity(0.2),
        ),
      ),
    );
  }
}
