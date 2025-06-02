// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    B01PageUi(),
  );
}

class B01PageUi extends StatefulWidget {
  const B01PageUi({super.key});

  @override
  State<B01PageUi> createState() => _B01PageUiState();
}

class _B01PageUiState extends State<B01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/imgb1.png',
                width: 500.0,
                height: 500.0,
              ),
              Text(
                'Discover Your',
                style: GoogleFonts.merriweather(
                  fontSize: 35.0,
                  color: const Color.fromARGB(255, 37, 64, 217),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Dream Job here',
                style: GoogleFonts.merriweather(
                  fontSize: 35.0,
                  color: const Color.fromARGB(255, 37, 64, 217),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                'Explore all the existing job roles and based on your',
                style: GoogleFonts.merriweather(
                  fontSize: 15.0,
                  color: Colors.grey[700],
                ),
              ),
              Text(
                'interest and study major',
                style: GoogleFonts.merriweather(
                  fontSize: 15.0,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 37, 64, 217),
                      fixedSize: Size(
                        150.0,
                        55.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Registe',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 25.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      fixedSize: Size(
                        150.0,
                        55.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
