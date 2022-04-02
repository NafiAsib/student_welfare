import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? Function(String?)? validator;
  final bool obsecure;
  final TextInputType keyboardType;
  final bool isMulti;
  final bool autofocus;
  final bool enabled;
  final String? errorText;
  final String label;
  final Widget? suffix;
  final Widget? prefix;
  final void Function()? togglePasswordVisibility;
  final String? helperText;

  const CustomTextFormField({
    Key? key,
    required this.label,
    this.prefix,
    this.errorText,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obsecure = false,
    this.isMulti = false,
    this.autofocus = false,
    this.suffix,
    this.togglePasswordVisibility,
    this.enabled = true,
    this.helperText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: TextFormField(
        minLines: isMulti ? 10 : 1,
        maxLines: isMulti ? null : 1,
        obscureText: obsecure,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFFBF5F5),
          hintText: label,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey,
            fontSize: 14,
          ),
          prefixIcon: prefix,
          helperText: helperText,
          contentPadding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1.0, color: Color(0xFFDBDAE4)),
            borderRadius: BorderRadius.circular(25.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1.0, color: Color(0xFFDBDAE4)),
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
