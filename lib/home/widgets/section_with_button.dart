import 'package:flutter/material.dart';

class SectionWithButton extends StatelessWidget {
  const SectionWithButton({
    required this.onAddPressed,
    required this.title,
    required this.icon,
    super.key,
  });

  final String title;
  final VoidCallback onAddPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      trailing: IconButton(
        icon: Icon(
          icon,
          color: Colors.black87,
          size: 30,
        ),
        onPressed: onAddPressed,
      ),
    );
  }
}
