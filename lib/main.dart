import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Friendship Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FriendshipScreen(),
    );
  }
}

class FriendshipScreen extends StatefulWidget {
  @override
  _FriendshipScreenState createState() => _FriendshipScreenState();
}

class _FriendshipScreenState extends State<FriendshipScreen> {
  final TextEditingController _nameController1 = TextEditingController();
  final TextEditingController _nameController2 = TextEditingController();
  String _friendshipPercentage = "";

  void calculateFriendship() {
    final random = Random();
    setState(() {
      _friendshipPercentage = "Friendship Strength: ${random.nextInt(101)}%";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Friendship Calculator'),
      backgroundColor: Colors.deepOrangeAccent,),
      backgroundColor: Colors.black26,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController1,
              decoration: InputDecoration(labelText: 'Enter Your name'),
            ),
            TextField(
              controller: _nameController2,
              decoration: InputDecoration(labelText: 'Enter Friend name'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateFriendship,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text(
              _friendshipPercentage,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
