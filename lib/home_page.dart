import 'package:flutter/material.dart';
import 'dart:io';

import 'doctor_login_page.dart';
import 'patient_login_page.dart';

//this file contains the screen elements of the main home page(landing page)

//first row should contain text "Choose your role"
//second row should contain two buttons "Doctor" and "Patient"

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose your role",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20), // Add some space between the text and the buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DentistLoginPage()),
                      );
                    },
                    child: Text(
                      "Doctor",
                      style: TextStyle(
                        color: Colors.black 
                      ),
                    ), 
                  ),
                ),
                SizedBox(width: 20), // Add some space between the two buttons
                SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PatientLogin()),
                      );
                    },
                    child: Text(
                      "Patient",
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}