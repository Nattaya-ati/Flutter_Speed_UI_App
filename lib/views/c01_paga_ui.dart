import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    C01PageUi(),
  );
}

class C01PageUi extends StatefulWidget {
  const C01PageUi({super.key});

  @override
  State<C01PageUi> createState() => _C01PageUiState();
}

class _C01PageUiState extends State<C01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // รูปภาพพื้นหลังเต็มหน้าจอ
          Positioned.fill(
            child: Image.asset(
              'assets/images/imgc1.png', // เปลี่ยนเป็นชื่อไฟล์ของคุณ
              fit: BoxFit.cover,
            ),
          ),

          // รูปตัว H อยู่ด้านบน
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/imgc2.png', // รูปตัว H
                    height: 150,
                    width: 150,
                  ),
                  Text(
                    'HOPE FOR',
                    style: GoogleFonts.merriweather(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    'HUMANITY',
                    style: GoogleFonts.merriweather(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 180.0,
                  ),
                  Text(
                    'Welcome to ',
                    style: GoogleFonts.merriweather(
                      fontSize: 25.0,
                      color: Colors.green[900],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'hope for humanity',
                    style: GoogleFonts.merriweather(
                      fontSize: 25.0,
                      color: Colors.green[900],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
