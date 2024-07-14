import 'package:flutter/material.dart';

class CustomAuthTextField extends StatefulWidget {
  const CustomAuthTextField({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  State<CustomAuthTextField> createState() => _CustomAuthTextFieldState();
}

class _CustomAuthTextFieldState extends State<CustomAuthTextField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return widget.labelText == 'Password'
        ? TextFormField(
            obscureText: !obscureText,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon:
                    Icon(obscureText ? Icons.visibility : Icons.visibility_off),
              ),
              border: const OutlineInputBorder(),
              labelText: widget.labelText,
            ),
          )
        : TextFormField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: widget.labelText,
            ),
          );
  }
}
