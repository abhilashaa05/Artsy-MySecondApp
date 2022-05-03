

import 'package:flutter/material.dart';
import 'dart:math';

class Artsy1 extends StatefulWidget {

  @override
  State<Artsy1> createState() => _Artsy1State();
}

class _Artsy1State extends State<Artsy1> {

  int artNumber=1;

  void generateArt(){
    setState(() {
      if (artNumber!=7) {
        artNumber++;
      } else{
        artNumber=1;
      }
      // artNumber=Random().nextInt(7)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        leading: Hero(
          tag: 'logo',
          child: CircleAvatar(
            backgroundImage: AssetImage('images/artdp2.jpg'),
          
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.logout,
            ),
          )],
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        title: Text(
          'ARTSY - by Abhilasha',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 550,
              height: 500,
              image: AssetImage('images/art$artNumber.jpg'),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: (){
                generateArt();
              },
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}  