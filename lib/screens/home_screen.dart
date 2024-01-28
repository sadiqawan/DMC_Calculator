import 'package:dmc_calculator_fifth_assign/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late int eng, urdu, math, sci, isl;
  late int obt;
  late String grd;
  late double per;

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
        child: Form(
          key: formkey,
          child: ListView(
            children: [
              const Gap(20),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter English marks',
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: 'English',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Please enter marks';
                  }
                  if (text.length > 3) {
                    return ' inValid Marks';
                  }
                  if (int.parse(text) >= 100) {
                    return 'Marks can not be grater than 100';
                  }
                  eng = int.parse(text);
                  return null;
                },
              ),
              const Gap(20),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter Urdu marks',
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: 'Urdu',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Please enter marks';
                  }
                  if (text.length > 3) {
                    return ' inValid Marks';
                  }
                  if (int.parse(text) >= 100) {
                    return 'Marks can not be grater than 100';
                  }
                  urdu = int.parse(text);
                  return null;
                },
              ),
              const Gap(20),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter Math marks',
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: 'Math',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Please enter marks';
                  }
                  if (text.length > 3) {
                    return ' inValid Marks';
                  }
                  if (int.parse(text) >= 100) {
                    return 'Marks can not be grater than 100';
                  }
                  math = int.parse(text);
                  return null;
                },
              ),
              const Gap(20),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter Science marks',
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: 'Science ',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
                 validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Please enter marks';
                  }
                  if (text.length > 3) {
                    return ' inValid Marks';
                  }
                  if (int.parse(text) >= 100) {
                    return 'Marks can not be grater than 100';
                  }
                  sci = int.parse(text);
                  return null;
                },
              ),
              const Gap(20),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter Islamiat marks',
                  hintStyle: TextStyle(color: Colors.black),
                  labelText: 'Islamiat',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Please enter marks';
                  }
                  if (text.length > 3) {
                    return ' inValid Marks';
                  }
                  if (int.parse(text) >= 100) {
                    return 'Marks can not be grater than 100';
                  }
                  isl = int.parse(text);
                  return null;
                },
              ),
              const Gap(20),
              ElevatedButton(
                  onPressed: () {
                    formkey.currentState!.validate();
                    setState(() {
                      obt = eng + urdu + math + sci + math + isl;
                      per = obt * 100 / 500;
                      if (per <= 90) {
                        grd = 'Your grade is A';
                      } else if (per <= 80) {
                        grd = 'Your grade is B';
                      } else if (per <= 70) {
                        grd = 'Your grade is C';
                      } else if (per <= 60) {
                        grd = 'Your grade is D';
                      } else {
                        grd = 'You have failed';
                      };

                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultScreen(eng: eng, urd: urdu, math: math, sci: sci, isl: isl,  obt: obt, per: per, grd: grd)
                     ));
                    });
                   ;
                  },
                  child: const Text('Calculate')),
              const Gap(20),
              ElevatedButton(
                  onPressed: () {
                    setState(() {

                      formkey.currentState!.reset();
                    });
                  },
                  child: const Text('Clear'))
            ],
          ),
        ),
      ),
    );
  }
}
