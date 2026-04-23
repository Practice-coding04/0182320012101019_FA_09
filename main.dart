import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IDCardScreen(),
    );
  }
}

class IDCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Digital ID Card"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Card(
          elevation: 6,
          margin: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),

                SizedBox(height: 12),

                Text(
                  "Tahsin Rahman Shorme",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "Batch: 63rd, Department of CSE",
                  style: TextStyle(color: Colors.grey[700]),
                ),

                SizedBox(height: 10),

                Divider(),

                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("ID: 0182320012101019"),
                ),

                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email: trs@gmail.com"),
                ),

                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone: +8801700000000"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}