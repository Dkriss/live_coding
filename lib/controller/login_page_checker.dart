import 'package:flutter/material.dart';

// folder controller, login_page_checker.dart

bool checkPalindrome(String text) {
  String cleanText = text.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  String reversedText = cleanText.split('').reversed.join('');
  print('cleanText: $cleanText');
  print('reversedText: $reversedText');
  return cleanText == reversedText;
}




void showResultDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Palindrome Check Result'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}