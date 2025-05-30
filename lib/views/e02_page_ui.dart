// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    E02PageUi(),
  );
}

class E02PageUi extends StatefulWidget {
  const E02PageUi({super.key});

  @override
  State<E02PageUi> createState() => _E02PageUiState();
}

class _E02PageUiState extends State<E02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/imge2.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Welcome Back',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Login to your account',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 1.0,
                bottom: 1.0,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Enter Email or Phone number',
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 1.0,
                bottom: 1.0,
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Input Password',
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    //FontAwesomeIcons.eye,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 40.0,
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[200],
                fixedSize: Size(
                  300.0,
                  55.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.orange[200],
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      ' OR ',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.orange[200],
                      thickness: 2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/imge3.png',
                    width: 50.0,
                    height: 50.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/imge4.png',
                    width: 50.0,
                    height: 50.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/imge5.png',
                    width: 50.0,
                    height: 50.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  width: 2.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.orange[800],
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
