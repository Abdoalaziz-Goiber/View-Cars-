 import 'package:flutter/material.dart';
import 'package:myapp/Buton.dart';
import 'package:myapp/Texfield.dart';
import 'package:myapp/5home.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<StatefulWidget> createState() => _MyLoginState();
}

class _MyLoginState extends State<login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> forms = GlobalKey<FormState>();

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل الدخول', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF007DfC),   
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);   
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white],       
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          children: [
            SizedBox(height: 50),
            Form(
              key: forms,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "إنشاء حساب",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 10),
                  const Text(
                    "الايميل",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 10),
                  comfieldadd(
                    hindtext: "ادخل الايميل",
                    mycntr: email,
                    validator: (val) {
                      if (val == "") {
                        return "الحقل فارغ";
                      }
                      return null;  
                    },
                    sub: Icon(Icons.email, color: Colors.black),
                    kepporedtype: TextInputType.emailAddress,
                    textDirection: TextDirection.rtl, 
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.abc)),
                    obscureText: _isPasswordVisible,
                  ),
                  SizedBox(height: 10),
                  const Text(
                    "كلمة السر",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: password,
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      hintText: "ادخل كلمة السر",
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;    
                          });
                        },
                      ),
                      filled: true,
                      fillColor: Colors.grey[300],    
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),        
                        borderSide: BorderSide.none,         
                      ),
                    ),
                    validator: (val) {
                      if (val == "") {
                        return "الحقل فارغ";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            butomm(
              title: "تسجيل دخول",
              onPressed: () {
                if (forms.currentState!.validate()) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("يرجى ملء جميع الحقول")),
                  );
                }
              },
            ),
            SizedBox(height: 10),
            Text(
              "تسجيل بواسطة",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "asset/googl.png",
                  height: 50,
                  width: 50,
                ),
                SizedBox(width: 40),
                Image.asset(
                  "asset/fesbock.png",
                  height: 50,
                  width: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
