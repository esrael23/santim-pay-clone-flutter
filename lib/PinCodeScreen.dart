import 'package:flutter/material.dart';
import 'package:santim_pay/LinkedAccountsScreen.dart';

class PinCodeScreen extends StatefulWidget {
  @override
  _PinCodeScreenState createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
    _focusNode4.dispose();
    super.dispose();
  }

  void _nextField(String value, FocusNode currentFocus, FocusNode nextFocus) {
    if (value.length == 1) {
      currentFocus.unfocus();
      FocusScope.of(context).requestFocus(nextFocus);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
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
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildPinField(_controller1, _focusNode1, _focusNode2),
                SizedBox(width: 10),
                _buildPinField(_controller2, _focusNode2, _focusNode3),
                SizedBox(width: 10),
                _buildPinField(_controller3, _focusNode3, _focusNode4),
                SizedBox(width: 10),
                _buildPinField(_controller4, _focusNode4, _focusNode4),
              ],
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Add your forgot PIN functionality here
              },
              child: Text(
                'Forgot PIN?',
                style: TextStyle(
                  color: Color(0xFFD4AF37), // Use the exact gold color
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.fingerprint, color: Color(0xFFD4AF37)),
                  onPressed: () {
                    // Add your fingerprint functionality here
                  },
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LinkedAccountsScreen()),
                    );
                  },
                  icon: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  label: Icon(
                    Icons.double_arrow,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildPinField(TextEditingController controller,
      FocusNode currentFocus, FocusNode nextFocus) {
    return Container(
      width: 50,
      height: 50,
      child: TextField(
        controller: controller,
        focusNode: currentFocus,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        maxLength: 1,
        decoration: InputDecoration(
          counterText: "",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onChanged: (value) {
          if (nextFocus != null) {
            _nextField(value, currentFocus, nextFocus);
          } else if (value.length == 1) {
            currentFocus.unfocus();
          }
        },
      ),
    );
  }
}
