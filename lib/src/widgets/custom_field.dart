import 'package:flutter/material.dart';
import 'package:task_app/src/global/ui_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    this.onSubmitted,
    this.obscureText = false,
    this.keyboardType,
    this.controller,
    this.focusNode,
    this.textCapitalization = TextCapitalization.none,
    this.maxLines,
    this.minLines,
    this.validator,
  }) : super(key: key);
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final void Function(String?)? onSubmitted;
  final FocusNode? focusNode;
  final TextCapitalization textCapitalization;
  final String? Function(String?)? validator;
  final int? maxLines;
  final int? minLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Theme.of(context).primaryColor,
      validator: validator,
      maxLines: maxLines,
      minLines: minLines,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      focusNode: focusNode,
      textCapitalization: textCapitalization,
      onFieldSubmitted: onSubmitted,
      controller: controller,
      obscureText: obscureText,
      autocorrect: false,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: Text(hintText),
        contentPadding: const EdgeInsets.only(right: 10, top: 20, bottom: 20),
        hintText: hintText,
        prefixIcon: Icon(
          prefixIcon,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: UIColors.appColor,
            width: 2,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
