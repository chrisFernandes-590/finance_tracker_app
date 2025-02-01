import 'package:finance_tracker_app/components/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController wiseIDController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_balance_wallet,
                  size: 80.0,
                ),
                Text(
                  "WealthWise",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 74),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  // Wise ID prompt
                  Text(
                    "Sign in with \"Wise ID\"",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF6D6D6D),
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(height: 20),

                  // Wise ID text field
                  CustomTextField(
                    controller: wiseIDController,
                    hintText: "Wise ID",
                    obscureText: false,
                    suffixIcon: Icons.arrow_forward_ios_rounded,
                  ),

                  // Keep Signed In check box
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
