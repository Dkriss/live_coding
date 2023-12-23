import 'package:flutter/material.dart';
import 'package:live_coding/view/component/login_widget.dart';
import 'package:live_coding/controller/login_page_checker.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController sentenceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 170,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                child: Transform.scale(
                  scale: 1.2,
                  child: Image.asset(
                    'assets/ic_photo.png',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 350,
              left: 32,
              right: 32,
              child: Column(
                children: [
                  CustomTextField(
                    hintText: 'Name',
                    controller: nameController,
                  ),
                  const SizedBox(height: 28),
                  CustomTextField(
                    hintText: 'Palindrome',
                    controller: sentenceController,
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      String sentence = sentenceController.text;
                      print('Original sentence: $sentence');
                      bool isPalindrome = checkPalindrome(sentence);
                      String resultMessage = isPalindrome
                          ? 'The sentence is a palindrome.'
                          : 'The sentence is not a palindrome.';
                      print('Result message: $resultMessage');
                      showResultDialog(context, resultMessage);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2B637B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      minimumSize: const Size.fromHeight(48),
                    ),
                    child: const Text(
                      'CHECK',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi saat tombol "Next" ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2B637B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      minimumSize: const Size.fromHeight(48),
                    ),
                    child: const Text(
                      'NEXT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
