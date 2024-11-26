import 'package:flutter/material.dart';

enum ButtonStyleVariant {primary, secondary}

class Button extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final ButtonStyleVariant variant;
  final Size size;

  const Button({
    super.key,
    required this.size,
    required this.label,
    required this.onPressed,
    this.variant = ButtonStyleVariant.primary,
  });

  @override
  Widget build(BuildContext context) {
    final style = _getButtonStyle(variant, size);
    return ElevatedButton(
      style: style,
      onPressed: onPressed,
      child: Text(label),
    );
  }
  ButtonStyle _getButtonStyle(ButtonStyleVariant variant, Size size){

    switch (variant){
      case ButtonStyleVariant.primary:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10), 
          fixedSize: size,
        );
      case ButtonStyleVariant.secondary:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.white70,
          foregroundColor: Colors.brown,
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
          fixedSize: size,
        );
      default:
      return ElevatedButton.styleFrom(
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
          fixedSize: size,
        );
    }
  }
}
