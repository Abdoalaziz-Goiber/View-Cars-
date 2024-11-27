 
 import 'package:flutter/material.dart';
import 'package:myapp/AboutPage.dart';
import 'package:myapp/6Rowwithimahetit.dart'; 
import 'package:myapp/textimage.dart';  
  

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

   
  String userName = 'ادخل اسم المستخدم';
  String userEmail = 'email@example.com';
  String userProfileImage = 'asset/per.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: buildAppBar(),
      body: Body(),
      drawer: buildDrawer(context),
       bottomNavigationBar: BottomNavigationBar(
        
        
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
           items: [
          BottomNavigationBarItem(
            icon: Container(),         
            label: "",    
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue,size: 30,),           
            label: "Home",           
          ),
          BottomNavigationBarItem(
            icon: Container(),         
            label: "",      
          ),
        ],
      ),
    );
  }

  // إنشاء AppBar
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF007DfC),
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        },
        icon: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
    );
  }

  // إنشاء Drawer
  Widget buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(userName), //    
            accountEmail: Text(userEmail),     
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(userProfileImage),   
            ),
            decoration: BoxDecoration(
              color: Color(0xFF007DfC),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.blue),
            title: Text('الرئيسية'),
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.blue),
            title: Text('بيانات الشخصية'),
            onTap: () {
               
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(
                    name: userName,
                    email: userEmail,
                    profileImage: userProfileImage,
                    onSave: (newName, newEmail, newImage) {
                      setState(() {
                              
                        userName = newName;
                        userEmail = newEmail;
                        userProfileImage = newImage;
                      });
                    },
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.blue),
            title: Text('الاشعارات'),
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.blue),
            title: Text('عن التطبيق'),
          ),
          ListTile(
            leading: Icon(Icons.document_scanner, color: Colors.blue),
            title: Text('الشروط والأحكام'),
          ),
        ],
      ),
    );
  }
}