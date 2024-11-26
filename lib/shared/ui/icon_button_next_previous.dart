import 'package:flutter/material.dart';

enum CircleButtonVariant {forward, back}

class CircleButton extends StatelessWidget {
  final CircleButtonVariant variant;
  final VoidCallback onPressed;

  const CircleButton({
    super.key,
    required this.variant,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final style = _getButtonStyle(variant);

    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: Icon(
        variant == CircleButtonVariant.forward
            ? Icons.arrow_forward
            : Icons.arrow_back,
        color: variant == CircleButtonVariant.forward
            ? Colors.white
            : Colors.brown,
      ),
    );
  }

  ButtonStyle _getButtonStyle(CircleButtonVariant variant) {
    switch (variant) {
      case CircleButtonVariant.forward:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.brown,
          shape: const CircleBorder(),
          padding: EdgeInsets.zero,
          fixedSize: const Size(16, 16),
        );
      case CircleButtonVariant.back:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: const CircleBorder(),
          side: const BorderSide(color: Colors.brown, width: 2),
          padding: EdgeInsets.zero,
          fixedSize: const Size(16, 16),
        );
      default:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.brown,
          shape: const CircleBorder(),
          padding: EdgeInsets.zero,
          fixedSize: const Size(16, 16),
        );
    }
  }
}
