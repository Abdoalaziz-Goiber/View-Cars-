 import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String name;
  final String email;
  final String profileImage;
  final Function(String, String, String) onSave;        

  ProfilePage({
    required this.name,
    required this.email,
    required this.profileImage,
    required this.onSave,
  });

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  String _profileImage = "";

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.name;
    _emailController.text = widget.email;
    _profileImage = widget.profileImage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('البيانات الشخصية',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF007DfC),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(_profileImage),
            ),
            SizedBox(height: 20),
            Text('معلومات المستخدم', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('الاسم'),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(hintText: 'أدخل اسمك', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            Text('البريد الإلكتروني'),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(hintText: 'أدخل بريدك الإلكتروني', border: OutlineInputBorder()),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            Text('العنوان'),
            TextFormField(
              controller: _addressController,
              decoration: InputDecoration(hintText: 'أدخل عنوانك', border: OutlineInputBorder()),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                widget.onSave(
                  _nameController.text,
                  _emailController.text,
                  _profileImage,
                );
                Navigator.pop(context);         
              },
              child: Text('حفظ التعديلات',style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(primary: Color(0xFF007DfC)),
            ),
          ],
        ),
      ),
    );
  }
}
