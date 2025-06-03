// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class D05PageUi extends StatefulWidget {
  @override
  _D05PageUiState createState() => _D05PageUiState();
}

class _D05PageUiState extends State<D05PageUi> {
  final int fieldCount = 4;

  List<FocusNode> focusNodes = [];
  List<TextEditingController> controllers = [];

  @override
  void initState() {
    super.initState();
    focusNodes = List.generate(fieldCount, (_) => FocusNode());
    controllers = List.generate(fieldCount, (_) => TextEditingController());
  }

  @override
  void dispose() {
    for (var node in focusNodes) {
      node.dispose();
    }
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  Widget buildOTPBox(int index) {
    return SizedBox(
      width: 55,
      height: 55,
      child: TextField(
        controller: controllers[index],
        focusNode: focusNodes[index],
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counterText: '', // ซ่อนตัวนับ maxLength
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        onChanged: (value) {
          if (value.length == 1 && index < fieldCount - 1) {
            FocusScope.of(context).requestFocus(focusNodes[index + 1]);
          } else if (value.isEmpty && index > 0) {
            FocusScope.of(context).requestFocus(focusNodes[index - 1]);
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 15.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () {
                      // การย้อนกลับไปหน้าก่อนหน้า
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(
                            255, 241, 241, 238), // พื้นหลังสี
                        shape: BoxShape
                            .rectangle, // หรือใช้ BoxShape.rectangle ถ้าไม่ต้องการวงกลม
                      ),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: const Color.fromARGB(255, 2, 0, 0),
                        size: 20.0,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'OTP Verification',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[1000],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter the verification code we just sent on your',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[1000],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'email address.',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[1000],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    fieldCount,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: buildOTPBox(index),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Verify',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 4, 3, 2),
                    fixedSize: Size(
                      300.0,
                      55.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
