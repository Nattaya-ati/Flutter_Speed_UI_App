// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    D04PageUi(),
  );
}

class D04PageUi extends StatefulWidget {
  const D04PageUi({super.key});

  @override
  State<D04PageUi> createState() => _D04PageUiState();
}

class _D04PageUiState extends State<D04PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.0),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '9:41',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.signal_cellular_4_bar, size: 20),
                        SizedBox(width: 6),
                        Icon(Icons.wifi, size: 20),
                        SizedBox(width: 6),
                        Icon(CupertinoIcons.battery_100, size: 24),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: InkWell(
                  onTap: () {
                    // การย้อนกลับไปหน้าก่อนหน้า
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 8.0,
                      top: 8.0,
                      bottom: 8.0,
                      right: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 248, 248, 244), // พื้นหลังสี
                      shape: BoxShape
                          .rectangle, // หรือใช้ BoxShape.rectangle ถ้าไม่ต้องการวงกลม
                      borderRadius:
                          BorderRadius.circular(10.0), // รัศมีของวงกลม
                      border: Border.all(
                        color: const Color.fromARGB(
                            255, 201, 201, 199), // สีของเส้นรอบวงกลม
                        width: 2.0, // ความหนาของเส้นรอบวงกลม
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: const Color.fromARGB(255, 7, 0, 0),
                      size: 25.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40.0),
                  Transform.translate(
                    offset: Offset(-5.0, 0), // ขยับข้อความขึ้นให้ชิดภาพ
                    child: Text(
                      'Forget Password?',
                      style: GoogleFonts.merriweather(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "Don't worry, it happens. Please enter the email ",
                    style: GoogleFonts.merriweather(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "address linked to your account.",
                    style: GoogleFonts.merriweather(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.0),
                      ),
                      hintText: 'Enter your email',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 191, 172, 172),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 167, 242, 221),
                            Color.fromARGB(255, 89, 231, 239),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Send Code',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 430.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Remember password?",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(width: 4.0),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Color.fromARGB(255, 97, 196, 117),
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
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
