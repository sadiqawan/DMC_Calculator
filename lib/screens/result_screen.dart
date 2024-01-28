import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ResultScreen extends StatelessWidget {
  int eng, urd, math, sci, isl, obt;

  double per;
  String grd;

  ResultScreen(
      {super.key,
      required this.eng,
      required this.urd,
      required this.math,
      required this.sci,
      required this.isl,
      required this.obt,
      required this.per,
      required this.grd});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Result')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Card(
                      child: Text(
                    'English:         $eng',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40),
                  )),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                      child: Text(
                    'Urdu:             $urd',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40),
                  )),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                      child: Text(
                    'Math:             $math',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40),
                  )),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                      child: Text(
                    'Science:         $sci',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40),
                  )),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                      child: Text(
                    'Islamiat:         $isl',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40),
                  )),
                ),
              ],
            ),
            const Gap(30),
            const Row(
              children: [
                Expanded(
                  child: Card(
                      child: Text(
                    'Total Marks: 500',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  )),
                ),
              ],
            ),
            const Gap(20),
            Row(
              children: [
                Expanded(
                  child: Card(
                      child: Text(
                    'Obtained Marks:           $obt',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40),
                  )),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                      child: Text(
                    'Percentage:   $per',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40),
                  )),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                      child: Text(
                    'Grad:   $grd',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 40),
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
