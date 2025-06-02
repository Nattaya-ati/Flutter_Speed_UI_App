// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    B02PageUi(),
  );
}

class B02PageUi extends StatefulWidget {
  const B02PageUi({super.key});

  @override
  State<B02PageUi> createState() => _B02PageUiState();
}

class _B02PageUiState extends State<B02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40.0,
            right: 40.0,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120.0,
                ),
                Text(
                  'Login here',
                  style: GoogleFonts.merriweather(
                    fontSize: 35.0,
                    color: const Color.fromARGB(255, 12, 107, 250),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Welcome back you've ",
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "been missed!",
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true, // ต้องใส่เพื่อให้ fillColor ทำงาน
                    fillColor: Colors.grey[100], // สีพื้นหลังของ TextField
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.white, // สีของเส้นรอบ TextField
                      ),
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true, // ต้องใส่เพื่อให้ fillColor ทำงาน
                    fillColor: Colors.grey[100], // สีพื้นหลังของ TextField
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.white, // สีของเส้นรอบ TextField
                      ),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10.0,
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Forgot your Password?',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 29, 31, 145),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        // child: Text(  ครอบ text ด้วย row
                        'Sign In',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: const Color.fromARGB(255, 248, 248, 248),
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 8, 103, 228),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width - 80.0, //กว้าง
                      55.0, //สูง
                      // กว้างหน้านี้ไม่ได้ ครอบด้วยPadding ถ้าต้องการให้ปุ่ม ลดขนาด จากที่กว้างเต็มพื้นที่ ก็ -80  มาจาก ลดขวา 40 และ ลดซ้าย 40
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Create new account",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                Text(
                  "Or continue with",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: const Color.fromRGBO(25, 106, 229, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // ใส่ฟังก์ชันที่ต้องการให้ทำงานเมื่อกดปุ่ม
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // ทำให้มุมเป็นเหลี่ยม
                        ),
                        padding: const EdgeInsets.all(16),
                      ),
                      child: const FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 30.0),
                    ElevatedButton(
                      onPressed: () {
                        // ใส่ฟังก์ชันที่ต้องการให้ทำงานเมื่อกดปุ่ม
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // ทำให้มุมเป็นเหลี่ยม
                        ),
                        padding: const EdgeInsets.all(16),
                      ),
                      child: const FaIcon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 30.0),
                    ElevatedButton(
                      onPressed: () {
                        // ใส่ฟังก์ชันที่ต้องการให้ทำงานเมื่อกดปุ่ม
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // ทำให้มุมเป็นเหลี่ยม
                        ),
                        padding: const EdgeInsets.all(16),
                      ),
                      child: const FaIcon(
                        FontAwesomeIcons.apple,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
