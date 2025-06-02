// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(home: C02PageUi()));
}

class C02PageUi extends StatefulWidget {
  const C02PageUi({super.key});

  @override
  State<C02PageUi> createState() => _C02PageUiState();
}

class _C02PageUiState extends State<C02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '9:19',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.signal_cellular_4_bar, size: 20),
                        SizedBox(width: 6),
                        Icon(Icons.wifi, size: 20),
                        SizedBox(width: 6),
                        Icon(CupertinoIcons.battery_0, size: 24),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 150.0),
            Container(
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.green, width: 4.0),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/images/imgc2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            Text(
              'Sign in your account',
              style: GoogleFonts.merriweather(
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email',
                    style: TextStyle(fontSize: 20.0, color: Colors.black87),
                  ),
                  const SizedBox(height: 8.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.0),
                      ),
                      hintText: 'ex: jon.smith@email.com',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 191, 172, 172),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  const Text(
                    'Password',
                    style: TextStyle(fontSize: 20.0, color: Colors.black87),
                  ),
                  const SizedBox(height: 8.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.0),
                      ),
                      hintText: '***********',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 191, 172, 172),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 55.0,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 37, 140, 37),
                            Color.fromARGB(255, 75, 237, 196),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Center(
                    child: Text(
                      'Or Sign up with',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
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
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(16),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/imge4.png',
                          width: 50.0,
                          height: 50.0,
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(16),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/imge5.png',
                          width: 50.0,
                          height: 50.0,
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Color.fromARGB(255, 97, 196, 117),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
