import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // To make HTTP requests
import 'otp_verification_page.dart'; // Import the OTP page

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPhoneSelected = true; // For toggling between Phone and Email
  TextEditingController phoneController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/dealsdray_logo.png',
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ToggleButtons(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Phone', style: TextStyle(fontSize: 16)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Email', style: TextStyle(fontSize: 16)),
                  ),
                ],
                isSelected: [isPhoneSelected, !isPhoneSelected],
                onPressed: (int index) {
                  setState(() {
                    isPhoneSelected = index == 0;
                  });
                },
                color: Colors.grey,
                selectedColor: Colors.white,
                fillColor: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Glad to see you!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Please provide your phone number',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: isLoading
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () async {
                        // Call backend to check if phone is registered
                        setState(() {
                          isLoading = true;
                        });
                        bool isRegistered = await checkPhoneNumber(phoneController.text);
                        setState(() {
                          isLoading = false;
                        });

                        if (isRegistered) {
                          // Navigate to OTP verification page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => OTPVerificationPage(phone: phoneController.text)),
                          );
                        } else {
                          // Show error
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Phone number not registered!')),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,
                        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'SEND CODE',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  // Mock backend phone number validation
  Future<bool> checkPhoneNumber(String phoneNumber) async {
    // Mock API call
    await Future.delayed(Duration(seconds: 2)); // Simulating network delay

    // For demonstration, assume any phone number starting with "9" is registered
    return phoneNumber.startsWith('9');
  }
}