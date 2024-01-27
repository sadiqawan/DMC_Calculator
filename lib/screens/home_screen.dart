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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
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
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: 'English',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),

                validator: (text){
                  if( text == null || text.isEmpty){
                    return 'Please enter marks';
                  }
                  if( text.length > 3){
                    return ' inValid Marks';
                  }
                  if ( int.parse(text) >= 100){
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
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: 'Urdu',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                validator: (text){
                  if( text == null || text.isEmpty){
                    return 'Please enter marks';
                  }
                  if( text.length > 3){
                    return ' inValid Marks';
                  }
                  if ( int.parse(text) >= 100){
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
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: 'Math',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                validator: (text){
                  if( text == null || text.isEmpty){
                    return 'Please enter marks';
                  }
                  if( text.length > 3){
                    return ' inValid Marks';
                  }
                  if ( int.parse(text) >= 100){
                    return 'Marks can not be grater than 100';
                  }
                  math= int.parse(text);
                  return null;
                },
              ),
              const Gap(20),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter Science marks',
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: 'Science ',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                validator: (text){
                  if( text == null || text.isEmpty){
                    return 'Please enter marks';
                  }
                  if( text.length > 3){
                    return ' inValid Marks';
                  }
                  if ( int.parse(text) >= 100){
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
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: 'Islamiat',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                validator: (text){
                  if( text == null || text.isEmpty){
                    return 'Please enter marks';
                  }
                  if( text.length > 3){
                    return ' inValid Marks';
                  }
                  if ( int.parse(text) >= 100){
                    return 'Marks can not be grater than 100';
                  }
                  isl = int.parse(text);
                  return null;
                },
              ),
              const Gap(20),
              ElevatedButton(onPressed: () {}, child: const Text('Calculate')),
              const Gap(20),
              ElevatedButton(onPressed: () {
                setState(() {

                });
              }, child: const Text('Clear'))
            ],
          ),
        ),
      ),
    );
  }
}
