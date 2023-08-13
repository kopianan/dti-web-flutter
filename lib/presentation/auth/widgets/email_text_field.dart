import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
    required this.email,
  }) : super(key: key);

  final TextEditingController email;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: email,
      style: const TextStyle(fontSize: 16),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Email can not be empty";
        }
        final bool emailValid = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value);
        if (!emailValid) {
          return "Wrong e-mail format";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.email),
        hintText: 'Input your e-mail',
      ),
    );
  }
}
