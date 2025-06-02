// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(
    E03PageUi(),
  );
}

class E03PageUi extends StatefulWidget {
  const E03PageUi({super.key});

  @override
  State<E03PageUi> createState() => _E03PageUiState();
}

class _E03PageUiState extends State<E03PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, // จัดเนื้อหาให้อยู่ตรงกลางแนวนอน
          mainAxisAlignment: MainAxisAlignment.start, // จัดเนื้อหาให้ชิดด้านบน
          children: [
            Transform.translate(
              offset: Offset(0, -90), //ลบคือ เลื่อนขึ้น
              child: Image.asset(
                'assets/images/imge2.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Transform.translate(
              offset: Offset(0, -100), // ขยับข้อความขึ้นให้ชิดภาพ
              child: Text(
                'Register',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -100), // ขยับข้อความขึ้นให้ชิดภาพ
              child: Text(
                'Crea your new account',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[800],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Transform.translate(
              offset: Offset(0, -100), // ขยับข้อความขึ้นให้ชิดภาพ
              child: Padding(
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
                    hintText: 'Name',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Transform.translate(
              offset: Offset(0, -100), // ขยับข้อความขึ้นให้ชิดภาพ
              child: Padding(
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
                    hintText: 'E-mail',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Transform.translate(
              offset: Offset(0, -100), // ขยับข้อความขึ้นให้ชิดภาพ
              child: Padding(
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
                    hintText: 'Phone',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Transform.translate(
              offset: Offset(0, -100), // ขยับข้อความขึ้นให้ชิดภาพ
              child: Padding(
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
                    hintText: 'Password',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Transform.translate(
              offset: Offset(0, -100), // ขยับข้อความขึ้นให้ชิดภาพ
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Be signing up you agree to our",
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
                      'Terms & Conditions',
                      style: TextStyle(
                        color: Colors.orange[800],
                        fontSize: 15.0,
                        decoration: TextDecoration
                            .underline, // ใช้ decoration แทน underline
                        decorationColor:
                            Colors.orange[800], // กําหนดสีของ underline
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0, -100), // ขยับข้อความขึ้นให้ชิดภาพ
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "and",
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
                      'Privacy Policy',
                      style: TextStyle(
                        color: Colors.orange[800],
                        fontSize: 15.0,
                        decoration: TextDecoration
                            .underline, // ใช้ decoration แทน underline
                        decorationColor:
                            Colors.orange[800], // กําหนดสีของ underline
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Transform.translate(
              offset: Offset(0, -100),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 300.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepOrange, // สีส้มเข้ม
                        Colors.orangeAccent, //สีส้มอ่อน
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -90),
              child: Padding(
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
            ),
            Transform.translate(
              offset: Offset(0, -70),
              child: Row(
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
                      shape: const CircleBorder(), // ทำให้ปุ่มเป็นวงกล
                      padding: const EdgeInsets.all(16), // ขนาดของปุ่ม
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
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
                      shape: const CircleBorder(), // ทำให้ปุ่มเป็นวงกล
                      padding: const EdgeInsets.all(16), // ขนาดของปุ่ม
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
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
                      shape: const CircleBorder(), // ทำให้ปุ่มเป็นวงกล
                      padding: const EdgeInsets.all(16), // ขนาดของปุ่ม
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0, -50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
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
                      'Log In',
                      style: TextStyle(
                        color: Colors.orange[800],
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
