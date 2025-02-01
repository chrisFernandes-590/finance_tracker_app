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
                    onSuffixTap: () {
                      print("Proceed");
                    },
                    suffixIcon: Icons.arrow_forward_ios_rounded,
                  ),

                  SizedBox(height: 20),

                  // Keep Signed In check box
                  Text(
                    "Keep me signed in",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7f7f7f),
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(height: 20),
                  Divider(
                    color: Color.fromARGB(20, 0, 0, 0),
                    indent: 50,
                    endIndent: 50,
                  ),
                  SizedBox(height: 20),

                  // Forgot WiseID / Password text
                  GestureDetector(
                    onTap: () {
                      print("Forgot ID or password");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Forgot Wise ID or password?",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        Icon(
                          Icons.arrow_outward_rounded,
                          size: 20,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),

                  // Create WiseID text
                  GestureDetector(
                    onTap: () {
                      print("Create Wise ID");
                    },
                    child: Text(
                      "Create Wise ID",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
