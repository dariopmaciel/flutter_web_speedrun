// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_web_speedrun/app/core/ui/theme_extensions.dart';

class DefaultTextformField extends StatelessWidget {
  final ValueNotifier<bool> _obscureTextVN;
  //
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final String label;
  final bool obscureText;

  DefaultTextformField({
    super.key,
    this.controller,
    this.validator,
    required this.label,
    bool? obscureText,
  })  : _obscureTextVN = ValueNotifier<bool>(obscureText ?? false),
        obscureText = obscureText ?? false;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: _obscureTextVN,
        builder: (_, obscureTextVNValue, child) {
          return TextFormField(
            // textInputAction: TextInputAction.next,
            controller: controller,
            validator: validator,
            obscureText: obscureTextVNValue,
            decoration: InputDecoration(
                labelStyle: const TextStyle(fontSize: 15, color: Colors.black),
                labelText: label,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                suffixIcon: obscureText
                    ? IconButton(
                        onPressed: () {
                          _obscureTextVN.value = !obscureTextVNValue;
                        },
                        icon: Icon(
                          obscureTextVNValue ? Icons.lock : Icons.lock_open,
                          color: context.primaryColor,
                        ),
                      )
                    : null),
          );
        });
  }
}
