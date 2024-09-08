import 'package:flutter/material.dart';

class DentistLoginPage extends StatefulWidget {
  @override
  _DentistLoginPageState createState() => _DentistLoginPageState();
}

class _DentistLoginPageState extends State<DentistLoginPage> {
  bool _showSignUp = false;

  void _toggleSignUp() {
    setState(() {
      _showSignUp = !_showSignUp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dentist Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle login logic here
              },
              child: Text('Login'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleSignUp,
              child: Text('Sign Up'),
            ),
            if (_showSignUp)
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Confirm Password'),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Handle sign-up logic here
                    },
                    child: Text('Register'),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}