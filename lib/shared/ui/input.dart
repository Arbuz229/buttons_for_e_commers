import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final String labelText;
  final bool isPassword;

  const Input({
    super.key,
    required this.labelText,
    this.isPassword = false,
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  bool _isPasswordVisible = false; // Хранит текущее состояние видимости пароля

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,      
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            widget.labelText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 250,
            maxWidth: 350,
          ),
          child: TextField(
            obscureText: widget.isPassword && !_isPasswordVisible, 
            obscuringCharacter: '*',
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.green),
                borderRadius: BorderRadius.circular(30),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(30),
              ),
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    )
                  : null, // Кнопка появляется только если isPassword == true
            ),
          ),
        ),
      ],
    );
  }
}
