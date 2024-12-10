import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputPhoneWidget extends StatelessWidget {
  // The controller to manage the text input for the phone number
  final TextEditingController phoneController;

  const InputPhoneWidget({super.key, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      // Attach the controller to manage the text input
      controller: phoneController,
      decoration: InputDecoration(
        labelText: 'Phone', // Label for the input field
        labelStyle: const TextStyle(
          color: Colors.white70, // Lighter color for labels in dark mode
        ),
        border: OutlineInputBorder(
          // Rounded border for the input field
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          // Border when the field is not focused
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.white24),
        ),
        focusedBorder: OutlineInputBorder(
          // Border when the field is focused
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.cyanAccent),
        ),
        filled: true, // Enables a filled background
        fillColor: Colors.black45, // Background color for dark theme
      ),
      // Display a numeric keyboard for phone number input
      keyboardType: TextInputType.number,
      // Restrict input to numbers only
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      style: const TextStyle(
        color: Colors.white, // Text color for dark theme
      ),
      cursorColor: Colors.cyanAccent, // Cursor color for dark mode
    );
  }
}
