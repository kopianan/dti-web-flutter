import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField(
      {super.key,
      required this.controller,
      required this.obSecure,
      required this.onObsecure,
      this.onFinish,
      this.hint});
  final TextEditingController controller;
  final Function(bool) onObsecure;
  final bool obSecure;
  final String? hint;
  final ValueChanged<String>? onFinish;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (e) {
        if (e!.isEmpty) {
          return "Password can not be empty";
        }
        if (e.length < 6) {
          return "Password must be 6 character(s)";
        }
        return null;
      },
      obscureText: obSecure,
      onFieldSubmitted: onFinish,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: InkWell(
          onTap: () {
            onObsecure(!obSecure);
          },
          child:
              Icon(obSecure == true ? Icons.visibility : Icons.visibility_off),
        ),
        hintText: hint ?? 'Password',
        border: const OutlineInputBorder(),
      ),
    );
  }
}
