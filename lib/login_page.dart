import 'package:flutter/material.dart';
import 'package:santim_pay/PinCodeScreen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key}); // Use the exact color code for the gold shade

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Spacer(),
              SizedBox(
                height: 80,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Santim',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // First part color
                      ),
                    ),
                    TextSpan(
                      text: 'Pay',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFD4AF37), // Second part color (gold)
                      ),
                    ),
                  ],
                ),
              ),

              Text(
                'We need to Confirm it is you',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Icon(
                Icons.fingerprint,
                size: 100,
                color: const Color.fromARGB(
                    255, 218, 201, 52), // Change to the appropriate gold color
              ),
              Spacer(),
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PinCodeScreen()),
                  );
                },
                style: TextButton.styleFrom(
                  // Use the exact gold color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                icon: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Color(0xFFD4AF37),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Text(
                      '123',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Use the exact gold color
                      ),
                    ),
                  ),
                ),
                label: Text(
                  'PIN Code',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    // color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
