import 'package:flutter/material.dart';

class RegisterSuccessPage extends StatelessWidget {
  final String name;
  final String address;
  final String phoneNumber;

  RegisterSuccessPage({
    required this.name,
    required this.address,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Successful'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Registration Successful!',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Name: $name',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Address: $address',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Phone Number: $phoneNumber',
                    textAlign: TextAlign.center,
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
