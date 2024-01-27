

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'DMC',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(child: ListView(
          children: [
           const Gap(20),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const  InputDecoration(
                hintText:'Enter English marks',
                labelText: 'English',
                border: OutlineInputBorder(),
              ),
            ),
           const  Gap(20),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const  InputDecoration(
                hintText:'Enter Urdu marks',
                labelText: 'Urdu',
                border: OutlineInputBorder(),
              ),
            ),
            const  Gap(20),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const  InputDecoration(
                hintText:'Enter Math marks',
                labelText: 'Math',
                border: OutlineInputBorder(),
              ),
            ),
            const  Gap(20),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const  InputDecoration(
                hintText:'Enter Science marks',
                labelText: 'Science ',
                border: OutlineInputBorder(),
              ),
            ),
            const  Gap(20),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const  InputDecoration(
                hintText:'Enter Islamiat marks',
                labelText: 'Islamiat',
                border: OutlineInputBorder(),
              ),
            ),
            const  Gap(20),
          ],
        )),
      ),
    );
  }
}
