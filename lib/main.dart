import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Minecraft Character"),
        ),
        body: Center(
          child: Stack(
            children: [
              // Background Container
              Container(
                width: 400, // Adjust width to cover the entire screen
                height: 400, // Adjust height to cover the entire screen
                decoration: BoxDecoration(
                  color: Color.fromARGB(197, 125, 194, 90),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    'My first character made by Flutter',
                  ),
                ),
              ),

              // Minecraft Character Head
              MinecraftCharacterHead(),
            ],
          ),
        ),
      ),
    );
  }
}

class MinecraftCharacterHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(150.0),
      child: Container(
        width: 100,
        height: 100,
        child: Stack(
          children: [
            // Head
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 30, 201, 8),
              ),
            ),
            // Eyes
            Positioned(
              top: 20,
              left: 25,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 25,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            ),
            // Mouth
            Positioned(
              top: 60,
              left: 30,
              right: 30,
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            ),
            // Nose
            Positioned(
              left: 45, // Adjust the horizontal position of the nose
              bottom: 40, // Adjust the vertical position of the nose
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 220, 172, 154),
                ),
              ),
            ),
          ],
          
        ),
      ),
    );
    
  
  }
}
