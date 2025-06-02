import 'package:flutter/material.dart';

void main() {
  runApp(
    E04PageUi(),
  );
}

class E04PageUi extends StatefulWidget {
  const E04PageUi({super.key});

  @override
  State<E04PageUi> createState() => _E04PageUiState();
}

class _E04PageUiState extends State<E04PageUi> {
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
              offset: Offset(0, -5), //ลบคือ เลื่อนขึ้น
              child: Image.asset(
                'assets/images/imge2.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Transform.translate(
              offset: Offset(0, 20), // ขยับข้อความขึ้นให้ชิดภาพ
              child: Text(
                'Forget Password?',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, 20), // ขยับข้อความขึ้นให้ชิดภาพ
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 80.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter email address',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, 30), // ขยับข้อความขึ้นให้ชิดภาพ
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 70.0,
                  right: 70.0,
                  top: 1.0,
                  bottom: 1.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, 50),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 300.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 232, 191, 69), // สีส้มเข้ม
                        const Color.fromARGB(255, 233, 133, 71), //สีส้มอ่อน
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Send Code',
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
              offset: Offset(0, 300),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 19.0,
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
                        fontSize: 19.0,
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
