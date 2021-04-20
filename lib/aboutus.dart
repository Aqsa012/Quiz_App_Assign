library contactus;

import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

///Class for adding contact details/profile details as a complete new page in your flutter app.
class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 3),
            Text(
              'About Us',
              style: TextStyle(
                fontFamily: 'Lobster',
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
              ),
            ),
            SizedBox(
              height: 40.0,
              width: 450.0,
              child: Divider(
                color: Colors.indigoAccent,
                thickness: 1.0,
              ),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/aqii.jpg'),
              radius: 70.0,
            ),
            Text(
              'Aqsa Tariq',
              style: TextStyle(
                fontFamily: 'Lobster',
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 10.0,
              width: 450.0,
            ),
            Text(
              'FLUTTER Designer & Developer',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(
              height: 7.0,
              width: 450.0,
            ),
            Text(
              '03322474445',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                //letterSpacing: 5.0,
              ),
            ),
            SizedBox(
              height: 7.0,
              width: 450.0,
            ),
            Text(
              'aqsatariq211@gmail.com',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                //letterSpacing: 5.0,
              ),
            ),
            Spacer(flex: 5),
            Text(
              'Designed & Developed by Aqsa Tariq',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
                letterSpacing: 3.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
